# frozen_string_literal: true

class Conversation < ApplicationRecord
  belongs_to :contact
  has_many :posts, dependent: :destroy

  broadcasts_to ->(_conversation) { 'conversations' }, inserts_by: :prepend, target: 'conversations'
end
