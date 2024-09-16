# frozen_string_literal: true

class Contact < ApplicationRecord
  has_many :conversations, dependent: :destroy
  has_many :posts, as: :author
end
