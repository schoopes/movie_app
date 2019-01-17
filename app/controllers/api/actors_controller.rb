class Api::ActorsController < ApplicationController
  def one_actor
    @actor = Actor.first
    render 'one_actor.json.jbuilder'
  end
end
