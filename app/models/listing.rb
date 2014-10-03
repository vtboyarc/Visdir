class Listing < ActiveRecord::Base
  attr_accessible :budget, :category, :high_budget, :location, :low_budget, :photo, :title
  
  belongs_to :user
  
  mount_uploader :photo, ImageUploader #did rails g uploader photo
  
  accepts_nested_attributes_for :avatar, :allow_destroy => true, :reject_if => :avatar_is_blank
end

#remove low_ and high_ budget fields? just use budget? or make them boolean?
