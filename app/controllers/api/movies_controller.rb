class Api::MoviesController < ApplicationController
  def all_movies
    @movies = Movie.all
    render 'all_movies.json.jbuilder'
  end

  def one_movie
    @movie = Movie.first
    render 'one_movie.json.jbuilder'
  end
end
