class Place < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { in: 6..75 }
  vallidates :description, presence: true, length: { in: 10..250 }
end
