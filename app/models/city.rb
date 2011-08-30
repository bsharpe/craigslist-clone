# == Schema Information
#
# Table name: cities
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  permalink  :string(75)
#  pagetitle  :string(100)
#  metakey    :string(255)
#  metadesc   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class City < ActiveRecord::Base   
  has_many :classifieds 
  
  named_scope :list, :select => 'id, name, permalink', :order => "name ASC"
     
  has_permalink :name  

  def to_param
     permalink
  end     

end
