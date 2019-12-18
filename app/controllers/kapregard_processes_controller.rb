# frozen_string_literal: true

class KapregardProcessesController < ApplicationController
  def index
    @series = Seed.all.map do |seed|
      { name: seed.value, data: seed.kaprekard_processes.pluck(:iteration, :value) }
    end
  end
end
