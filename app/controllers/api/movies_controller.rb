class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render 'movies_index.json.jbuilder'
  end

  def show
    @movie = Movie.find(params[:id])
    render 'movie_show.json.jbuilder'
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
      )
    @movie.save
    render 'movie_show.json.jbuilder'
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.save
    render 'movie_show.json.jbuilder'
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: {message: "This movie has successfully been destroyed."}
  end
end
