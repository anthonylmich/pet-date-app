class MessagesController < ApplicationController
  before_action :authenticate_user
  #this will allow the user to view all the messages in the conversation show page.

  def index 
    #How should I make this only for the conversation?
    messages = Message.all.order(:id)
    render json: messages
  end

#this allows a user to create a new message "listing/post"

    def create 
      message = Message.new(
      user_id: current_user.id,
      conversation_id: params[:conversation_id],
      content: params[:content],
    )
    if message.save
      render json: message
    else
      render json: { errors: message.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
#this allows a user to change his/her message's post data but is not necesscary
#     def update 
#       message = Message.find_by(id: params[:id])
#       message.content = params[:content] || message.content
#       if message.save
#         render json: message
#       else
#         render json: {errors: message.errors.full_messages }, status: :bad_request
#       end
#     end
# #this allows the user to deletes one of their message "listings/posts"
#     def destroy 
#       message = Message.find_by(id: params[:id])
#       message.destroy
#       render json: { message: "Message successfully destroyed!" }
#     end
