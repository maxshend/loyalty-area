# frozen_string_literal: true

class User < ApplicationRecord
  validates :auth_id, :email, presence: true, uniqueness: { case_sensitive: false }
end
