# frozen_string_literal: true

# controller
class ChatroomController < ApplicationController
  def index
    # puts 'you are on index page'
    @chat = Chat.all
  end
end
