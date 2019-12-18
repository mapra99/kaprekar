# frozen_string_literal: true

class Seed < ApplicationRecord
  after_save :kaprekard

  has_many :kaprekard_processes

  validates :value, numericality: { only_integer: true, greater_than_or_equal_to: 10 },
                    presence: true, uniqueness: true

  def kaprekard
    num = kaprekard_processes.create(iteration: 0, value: value)
    20.times do |i|
      num = kaprekard_processes.create(iteration: i + 1, value: KaprekardProcess.calculate(num.value))
    end
  end
end
