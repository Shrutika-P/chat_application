# frozen_string_literal: true

class Chat < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  scope :custom_display, -> { order(:created_at).last(20) }
end
