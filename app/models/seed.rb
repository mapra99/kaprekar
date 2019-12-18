# frozen_string_literal: true

class Seed < ApplicationRecord
  has_many :kapregard_processes

  validates :value, numericality: { only_integer: true, greater_than_or_equal_to: 10 },
                    presence: true, uniqueness: true
end
