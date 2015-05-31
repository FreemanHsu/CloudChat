class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :phone
      t.string :email
      t.string :nickname
      t.boolean :gender
      t.string :password
      t.string :description
      t.string :avatar
      t.boolean :status

      t.timestamps
    end
  end
end
