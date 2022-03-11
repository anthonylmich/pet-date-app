class ConversationsController < ApplicationController
  #all of the actions for conversations require that a user must be logged in inorder to function properly.

  #allows the user to view all conversations THEY are in.
  def index 
    conversations = Conversation.all.order(:id)
    render json: conversations
  end

  #allows the user to view their conversation and edit the data within if wanted.
  def show
    conversation = Conversation.find_by(id: params[:id])
    render json: conversation
  end

  #this allows a user to create a new conversation "listing/post"
  def create 
    conversation = Conversation.new(
      sender_id: current_user.id,
      recipient: params[:recipient],
    )
    if conversation.save
      render json: conversation
    else
      render json: { errors: conversation.errors.full_messages }, status: :unprocessable_entity
    end
  end

#this allows the user to deletes one of their conversation "listings/posts"
    def destroy 
      conversation = Conversation.find_by(id: params[:id])
      conversation.destroy
      render json: { message: "Conversation successfully destroyed!" }
    end
end
