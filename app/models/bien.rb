class Bien < ApplicationRecord
  belongs_to :user
  has_many :depenses
  has_many :frais_recurrents
  has_many :loyers
  has_many :locataires

  CATEGORIE_BIEN = %w[Appartement Maison]
  validates :categorie, inclusion: { in: CATEGORIE_BIEN }
end

# Get depenses from date to date
# Get recettes from date to date
# recettes - depenses / var

# Generateur de depense depuis frais recurrents
