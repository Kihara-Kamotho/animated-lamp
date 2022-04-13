class Department < ApplicationRecord
  belongs_to :church
  has_one_attached :picture
end
