# == Schema Information
#
# Table name: classifieds
#
#  id                 :integer         not null, primary key
#  title              :string(75)
#  description        :text
#  location           :string(75)
#  adtype             :string(1)       default("O")
#  email              :string(75)
#  phone              :string(75)
#  activation_code    :string(40)
#  status             :integer(1)      default(0)
#  category_id        :integer
#  subcategory_id     :integer
#  city_id            :integer
#  permalink          :string(255)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Classified < ActiveRecord::Base
 belongs_to :category
 belongs_to :subcategory
 belongs_to :city
 
 validates_presence_of :title
 validates_presence_of :description
 validates_presence_of :email
 validates_format_of   :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
 
 has_attached_file :image, 
  		    :url => "/:attachment/:id_:style.:extension",
  		    :path => ":rails_root/public/:attachment/:id_:style.:extension",
  		    :styles => { :original => "500x500>" }  
  		    
 validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif']  		    
 validates_attachment_size :image, :less_than => 175.kilobytes, :message => 'image attachment size should be lessthan 175kb'

 has_permalink :title, :as => :permalink, :param => false
  
 def to_param
   permalink
 end  
   
 apply_simple_captcha :message=>'Values entered did not match image in step 5', :add_to_base => true
 
 def activate!    
   self.status = 1
   save(false)
 end
 
 def active?
   #Ad is inactive if status is zero
   status==1
 end
 
end
