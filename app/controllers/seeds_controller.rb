# frozen_string_literal: true

class SeedsController < ApplicationController
  def create
    @seed = Seed.new(value: params[:seed][:value])
    @seed.save

    redirect_to root_path
  end
end
