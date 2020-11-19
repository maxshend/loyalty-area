# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build :user }

  describe 'validations' do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of(:email).case_insensitive }

    it { should validate_presence_of :auth_id }
    it { should validate_uniqueness_of :auth_id }
  end
end
