# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :realizations
  belongs_to :user

  validates :name, presence: true, uniqueness: true
end
