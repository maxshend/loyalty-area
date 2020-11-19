# frozen_string_literal: true

module TinyGoauth
  class CreateAuth < ::ActiveInteraction::Base
    object :subject, class: Class, default: User

    integer :id
    string :email
    string :full_name
    string :phone
    datetime :birthdate

    def execute
      @record = subject.find_by auth_id: id

      return if @record

      @record = subject.new email: email, auth_id: id, full_name: full_name, phone: phone, birthdate: birthdate
      errors.merge! @record unless @record.save

      @record
    end
  end
end
