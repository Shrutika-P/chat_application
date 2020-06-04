# frozen_string_literal: true

Rails.application.routes.draw do
  root 'chatroom#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  post 'chat', to: 'chats#create'

  mount ActionCable.server, at: '/cable'
end
