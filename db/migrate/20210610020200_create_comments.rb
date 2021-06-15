# frozen_string_literal: true

# Class Migration for Comments
class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :comment, null: false
      t.integer :likes, default: 0
      t.integer :dislikes, default: 0
      t.references :post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
