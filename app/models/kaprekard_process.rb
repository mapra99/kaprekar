# frozen_string_literal: true

class KaprekardProcess < ApplicationRecord
  belongs_to :seed

  validates :iteration, presence: true
  validates :value, presence: true

  def self.calculate(num)
    highest = num.digits.sort.reverse.join.to_i
    lowest = num.digits.sort.join.to_i
    highest - lowest
  end
end
