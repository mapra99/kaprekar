# frozen_string_literal: true

class KaprekardProcess < ApplicationRecord
  belongs_to :seed

  validates :iteration, presence: true
  validates :value, presence: true
end
