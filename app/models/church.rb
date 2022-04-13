class Church < ApplicationRecord
  has_one_attached :image
  has_many :departments
end
