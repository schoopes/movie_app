class Api::MovieGenresController < ApplicationController

  def index
    @movie_genres = MovieGenre.all
    render 'index.json.jbuilder'
  end

  def create
    @movie_genre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
      )
    @movie_genre.save
    render 'show.json.jbuilder'
  end

end
