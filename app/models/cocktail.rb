class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_attachments :pictures, maximum: 3
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end

