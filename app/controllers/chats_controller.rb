# frozen_string_literal: true

class ChatsController < ApplicationController
  before_action :require_user

  def create
    puts "\n\n chats :#{current_user}\n\n"
    c = current_user
    chat = c.chats.build(filter_params)
    redirect_to root_path if chat.save
  end

  private

  def filter_params
    params.require(:chat).permit(:body)
  end
end
