class Listing < ActiveRecord::Base
  attr_accessible :category, :high_budget, :image, :location, :low_budget, :name, :title
end
