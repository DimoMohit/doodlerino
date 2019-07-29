class UserDoodlesController < ApplicationController
  before_action :set_user

  def index
    @doodles = [] # TODO: Let's show some doodles
  end

  private

  def set_user
    @user =
      begin
        # TODO: Implement
      end
  end
end
