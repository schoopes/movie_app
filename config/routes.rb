Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/actors_url" => "actors#one_actor"
    get "/movies_url" => "movies#all_movies"
    get "/one_movie" => "movies#one_movie"
    get "/one_actor_query" => "actors#one_actor_params"
    get "/one_actor_segment/:actor" => "actors#one_actor_params"
    post "/one_actor_body" => "actors#one_actor_params"
  end
end
