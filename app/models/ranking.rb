class Ranking < ApplicationRecord
  # Other validations...
  validates :pppassyd, presence: true, numericality: { greater_than_or_equal_to: -1000, less_than_or_equal_to: 1000, message: "must be between -1000 and 1000" }
  validates :pppasstd, presence: true, numericality: { greater_than_or_equal_to: -1000, less_than_or_equal_to: 1000, message: "must be between -1000 and 1000" }
  validates :pprecyd, presence: true, numericality: { greater_than_or_equal_to: -1000, less_than_or_equal_to: 1000, message: "must be between -1000 and 1000" }
  validates :pprectd, presence: true, numericality: { greater_than_or_equal_to: -1000, less_than_or_equal_to: 1000, message: "must be between -1000 and 1000" }
  validates :ppr, presence: true, numericality: { greater_than_or_equal_to: -1000, less_than_or_equal_to: 1000, message: "must be between -1000 and 1000" }
  validates :pprushyd, presence: true, numericality: { greater_than_or_equal_to: -1000, less_than_or_equal_to: 1000, message: "must be between -1000 and 1000" }
  validates :pprushtd, presence: true, numericality: { greater_than_or_equal_to: -1000, less_than_or_equal_to: 1000, message: "must be between -1000 and 1000" }
  validates :year, presence: true, inclusion: { in: 2012..2023, message: "must be between 2012 and 2023" }
end

