class MoviesController < ApplicationController
  def index
    @movies = Movie.all 
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def like 
    @movie = Movie.find_by(id: params[:id])
    Like.create(user_id: current_user.id, movie_id: @movie.id)
    redirect_to "/liked"
  end

  def liked
    @movies = current_user.movies
    render :liked
  end

end