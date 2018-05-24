class Cocktail < ApplicationRecord
  has_many :doses, dependent: :delete_all
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  # before_destroy :clear_doses

  def self.search(query)
    self.find_by_sql("SELECT DISTINCT cocktails.name, cocktails.id FROM cocktails
                      WHERE cocktails.name ILIKE '%#{query}%'
                      UNION
                      SELECT DISTINCT cocktails.name, cocktails.id FROM cocktails
                      JOIN doses ON cocktail_id = cocktails.id
                      JOIN ingredients ON doses.ingredient_id = ingredients.id
                      WHERE ingredients.name ILIKE '%#{query}%'")
  end

  private
end
