# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  permalink  :string(75)
#  parent_id  :integer         default(0)
#  type       :string(12)
#  pos        :integer         default(0)
#  pagetitle  :string(100)     default("railslist.com")
#  metakey    :string(255)     default("railslist.com")
#  metadesc   :string(255)     default("railslist.com")
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base

  has_many    :subcategories, :foreign_key => "parent_id"
  has_many :classifieds
  
  named_scope :list, :conditions => {:parent_id => '0'}, :order => "pos asc"    
      
  has_permalink :name
  
  def to_param
     permalink
  end  
  
end
