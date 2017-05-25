class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  CATEGORIES = [ 'Long Island Iced Tea', 'White Russian', 'Whiskey Sour','Gin & Tonic', 'Martini', 'Negroni', 'Bloody Mary', 'Margarita', 'Daiquiri', 'Mojito', 'Cosmopolitan']

  validates :name, presence: true, uniqueness: true

end

