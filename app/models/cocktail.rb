class Cocktail < ApplicationRecord
  has_many :doses, dependent: :delete_all
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  # before_destroy :clear_doses

  private
end

