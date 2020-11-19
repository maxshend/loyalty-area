# frozen_string_literal: true

class InstallTinyGoauth < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :auth_id, null: false, index: { unique: true }
      t.string :email, null: false, index: { unique: true }
      t.string :full_name
      t.string :phone
      t.datetime :birthdate

      t.timestamps
    end
  end
end
