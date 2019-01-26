class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.where("english = ?", true)
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
      director: params[:director],
      plot: params[:plot],
      english: params[:english]
      )
    if @movie.save
      render 'movie_show.json.jbuilder'
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.director = params[:director] || @movie.director
    @movie.plot = params[:plot] || @movie.plot
    @movie.english = params[:english] || @movie.english
    if @movie.save
      render 'movie_show.json.jbuilder'
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: {message: "This movie has successfully been destroyed."}
  end
end
