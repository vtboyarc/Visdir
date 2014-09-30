class Listing < ActiveRecord::Base
  attr_accessible :budget, :category, :high_budget, :location, :low_budget, :photo
end
