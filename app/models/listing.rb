class Listing < ActiveRecord::Base
  attr_accessible :budget, :category, :high_budget, :location, :low_budget, :photo, :title
  
  belongs_to :user
  
  mount_uploader :photo, ImageUploader #did rails g uploader photo
end