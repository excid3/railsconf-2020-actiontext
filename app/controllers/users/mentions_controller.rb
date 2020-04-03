class Users::MentionsController < ApplicationController
  def index
    @users = User.where("name LIKE ?", "#{params[:query]}%")
    json = @users.map do |user|
      {
        name: user.name,
        sgid: user.attachable_sgid,
        content: render_to_string(partial: "users/user", locals: {user: user}, formats: [:html])
      }
    end

    render json: json
  end
end
