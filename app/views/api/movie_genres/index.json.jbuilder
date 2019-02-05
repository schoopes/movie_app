json.array! @movie_genres.each do |movie_genre|
  json.partial! "movie_genre.json.jbuilder", movie_genre: movie_genre
end