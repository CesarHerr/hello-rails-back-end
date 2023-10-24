class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.find(rand(1..5))

    render json: @greetings
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Greeting not found' }, status: :not_found
  end
end
