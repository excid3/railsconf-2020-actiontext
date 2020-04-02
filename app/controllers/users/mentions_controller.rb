class Users::MentionsController < ApplicationController
  def index
    @users = User.where("name LIKE ?", "#{params[:query]}%")
  end
end
