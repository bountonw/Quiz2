class Place < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { in: 6..75 }
  validates :description, presence: true, length: { in: 10..250 }
end
