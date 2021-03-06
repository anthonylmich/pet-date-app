class UsersController < ApplicationController
  # This is a user signup in essence.
  before_action :authenticate_user, except: [:show, :create]
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      location_city: params[:location_city],
      phone_number: params[:phone_number],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

#this allows a user to update their user id. Do I need a User update?
  def update 
    user = current_user
    user.name = params[:name] || user.name
    user.location_city = params[:location_city] || user.location_city
    user.phone_number = params[:phone_number] || user.phone_number
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages }, status: :bad_request
    end
  end
  
#this allows the user to deletes one of their user "listings/posts"
  def destroy 
    user = current_user
    if user.destroy
      Conversation.where("sender_id = ? OR recipient_id = ?", current_user.id, current_user.id).destroy
      render json: { message: "User successfully destroyed!" }
    end
  end
end