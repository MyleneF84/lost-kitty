class Animal < ApplicationRecord
  belongs_to :user

  SPECIES = %w[cat dog bird goat raccoon].freeze
  validates :species, inclusion: { in: SPECIES }
  validates :name, presence: true
end
