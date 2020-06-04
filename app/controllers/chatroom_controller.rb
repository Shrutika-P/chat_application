# frozen_string_literal: true

# controller
class ChatroomController < ApplicationController
  # restriction to see page only for logged in user
  before_action :require_user

  def index
    @chat = Chat.new
    @chats = Chat.all
  end
end
