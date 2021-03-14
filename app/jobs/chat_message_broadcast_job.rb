class ChatMessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'room_channel', chat_message: render_chat_message(message)
  end

  private
  def render_chat_message(message)
    ApplicationController.renderer.render(partial: "messages/message",locals: { message: message, current_user: message.user })
  end
end
