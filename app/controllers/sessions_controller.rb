class SessionsController < ApplicationController
  def create
      user = User.find_by(username: params[:username])
      if user&.authenticate(params[:password])
          session[:user_id] = user.id
      else
          render json: {error: {login: "Invalid username or password"}}
      end
  end

  def destroy
      session.delete :user_id
      head :no_content
  end
end