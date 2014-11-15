class WarriorsController < ApplicationController
  respond_to :html

  def index
    @warriors = Warrior.all
  end
end
