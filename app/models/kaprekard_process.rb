# frozen_string_literal: true

class KaprekardProcess < ApplicationRecord
  belongs_to :seed

  validates :iteration, presence: true
  validates :value, presence: true

  def self.calculate(num)
    highest(num) - lowest(num)
  end

  private

  def self.highest(num)
    num.digits.sort.reverse.join.to_i
  end

  def self.lowest(num)
    num.digits.sort.join.to_i
  end
end
