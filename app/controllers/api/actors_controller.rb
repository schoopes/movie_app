class Api::ActorsController < ApplicationController
  def one_actor
    @actor = Actor.first
    render 'one_actor.json.jbuilder'
  end

  def one_actor_params
    @actor_params = Actor.find_by(id: params["actor"])
    render 'one_actor_query.json.jbuilder'
  end
end
