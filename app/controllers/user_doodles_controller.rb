class UserDoodlesController < ApplicationController
  before_action :set_user

  def show
    @doodles = @user.doodles # TODO: Let's show some doodles
  end

  private

  def set_user
    @user = User.find(params[:id])
    # begin
    #   # TODO: Implement
    # end
  end
end
