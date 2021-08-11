class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: CATEGORY }

  validates_presence_of :name, :category, :address
end
