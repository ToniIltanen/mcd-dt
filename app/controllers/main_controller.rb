class MainController < ApplicationController
  def index
    @Units = Unit.all
  end

end
