class AdminController < ApplicationController
  def index
    if current_user.has_role? :admin
      # see stuff
    else
      redirect_to root_path, notice: 'You are not authorized!'
    end
  end
end
