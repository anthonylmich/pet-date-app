class MessagesController < ApplicationController

    #actions that don't require user to be logged in.
    #this will allow the user to view all the messages in the conversation show page.
    def index 
      messages = Message.all.order(:id)
      render json: messages
    end
  
    #actions that require a user to be logged in
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
  #this allows a user to change his/her message's post data
      def update 
        message = Message.find_by(id: params[:id])
        message.content = params[:content] || message.content
        message.conversation_id = params[:conversation_id] || message.conversation_id
        if message.save
          render json: message
        else
          render json: {errors: message.errors.full_messages }, status: :bad_request
        end
      end
  #this allows the user to deletes one of their message "listings/posts"
      def destroy 
        message = Message.find_by(id: params[:id])
        message.destroy
        render json: { message: "Message successfully destroyed!" }
      end
  end
end
