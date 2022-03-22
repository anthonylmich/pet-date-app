class ConversationsController < ApplicationController
  #all of the actions for conversations require that a user must be logged in inorder to function properly.
  before_action :authenticate_user

  #allows the user to view all conversations THEY are in.
  def index 
    conversations = current_user.conversations
    render json: conversations, include: ["partner", "last_message"]
  end

  #allows the user to view their conversation and edit the data within if wanted.
  def show
    conversation = current_user.conversations.find_by(id: params[:id])
    render json: conversation, include: ["partner", "messages"] 
  end

  #this allows a user to create a new conversation "listing/post"
  def create 
    conversation = Conversation.new(
      sender_id: current_user.id,
      recipient_id: params[:recipient_id],
    )
    if conversation.save
      render json: conversation
    else
      render json: { errors: conversation.errors.full_messages }, status: :unprocessable_entity
    end
  end

#this allows the user to deletes one of their conversation "listings/posts" 
#a User should never need to destroy a conversation.
    # def destroy 
    #   conversation = current_user.conversations.find_by(id: params[:id])
    #   conversation.destroy
    #   render json: { message: "Conversation successfully destroyed!" }
    # end
end
