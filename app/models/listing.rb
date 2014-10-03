class Listing < ActiveRecord::Base
  attr_accessible :category, :high_budget, :image, :location, :low_budget, :name, :title
  belongs_to :user
  has_many :categories
  
  mount_uploader :photo, ImageUploader #did rails g uploader photo
  
  accepts_nested_attributes_for :avatar, :allow_destroy => true, :reject_if => :avatar_is_blank
  
end
