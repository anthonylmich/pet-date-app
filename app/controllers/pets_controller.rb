class PetsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  #actions that don't require user to be logged in.
  def index 
    pets = Pet.all.order(:id)
    render json: pets
  end

  def show
    pet = Pet.find_by(id: params[:id])
    render json: pet
  end

  #actions that require a user to be logged in
  #this allows a user to create a new pet "listing/post"
  def create 
    pet = Pet.new(
      user_id: current_user.id,
      name: params[:name],
      gender: params[:gender],
      description: params[:description],
      img_url: params[:img_url],
      likes: params[:likes],
      dislikes: params[:dislikes],
      fixed: params[:fixed],
    )
    if pet.save
      render json: pet
    else
      render json: { errors: pet.errors.full_messages }, status: :unprocessable_entity
    end
  end
#this allows a user to change his/her pet's post data
    def update 
      pet = Pet.find_by(id: params[:id])
      pet.name = params[:name] || pet.name
      pet.gender = params[:gender] || pet.gender
      pet.description = params[:description] || pet.description
      pet.img_url = params[:img_url] || pet.img_url
      pet.likes = params[:likes] || pet.likes
      pet.dislikes = params[:dislikes] || pet.dislikes
      pet.fixed = params[:fixed] || pet.fixed
      if pet.save
        render json: pet
      else
        render json: {errors: pet.errors.full_messages }, status: :bad_request
      end
    end
#this allows the user to deletes one of their pet "listings/posts"
    def destroy 
      pet = Pet.find_by(id: params[:id])
      pet.destroy
      render json: { message: "Pet successfully destroyed!" }
    end
end
