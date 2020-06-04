# frozen_string_literal: true

class ChatsController < ApplicationController
  before_action :require_user

  def create
    chat = current_user.chats.build(filter_params)

    ActionCable.server.broadcast 'chatroom_channel', mod_message: chat_render(chat) if chat.save
  end

  private

  def filter_params
    params.require(:chat).permit(:body)
  end

  # rendering just a partial which is _chat.html.erb
  #    which require chat object so sneding it as locals: { chat: chat }
  def chat_render(chat)
    render(partial: 'chat', locals: { chat: chat })
  end
end
