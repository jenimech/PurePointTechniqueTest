class HomeController < ApplicationController

  def index
    if params[:q].present?
      @results = RecipePuppy.new(params[:q]).perform
    end
  end
end
