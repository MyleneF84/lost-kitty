class Animal < ApplicationRecord
  belongs_to :user

  SPECIES = %w[cat dog bird goat raccoon].freeze
  validates :species, inclusion: { in: SPECIES }
  validates :user_id, presence: true

  # def initialize(args)
  #   @name = name
  #   @address = address
  #   @species = species
  #   @user_id ||= nil
  # end
end
