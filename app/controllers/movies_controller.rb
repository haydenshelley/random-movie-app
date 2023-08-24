class MoviesController < ApplicationController
  def index
    @movies = Movie.all 
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def random
    random_id = rand(1...Movie.count)
    @movie = Movie.find_by(id: random_id)
    render :show
  end
end
