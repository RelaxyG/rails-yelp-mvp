# frozen_string_literal: true
 CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: {in: CATEGORIES}
end
