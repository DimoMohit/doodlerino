class DoodlesController < ApplicationController
  def index
    @doodles = Doodle.bounded_by(search_params[:top_left], search_params[:bottom_right])
  end

  private

  def search_params
    query = JSON.parse(params[:q])

    { top_left: { x: query['top']['x'], y: query['top']['y'] },
      bottom_right: { x: query['bottom']['x'], y: query['bottom']['y'] } }
  end
end
