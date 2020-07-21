class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient_id, 
                                     message: 'this cocktail/ingredient couple already exists'}
end
