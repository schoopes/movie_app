class MovieGenre < ApplicationRecord
  belongs_to :movie 
  belongs_to :genre

  def movie_title
    movie.title
  end

  def genre_name
    genre.name
  end

end
