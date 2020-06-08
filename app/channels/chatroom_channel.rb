# frozen_string_literal: true

class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'chatroom_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end