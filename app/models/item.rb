class Item < ApplicationRecord
  has_many :realizations

  validates :name, presence: true, uniqueness: true
end
