class Animal < ApplicationRecord
  SPECIES = %w[cat dog bird goat raccoon].freeze
  validates :species, inclusion: { in: SPECIES }
end
