json.extract! user, :id, :name, :email, :created_at, :updated_at
json.sgid user.attachable_sgid
json.content render(partial: "users/user", locals: {user: user}, formats: [:html])
json.url user_url(user, format: :json)
