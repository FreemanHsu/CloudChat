class AddDescriptionToChatrooms < ActiveRecord::Migration
  def change
    add_column :chatrooms, :description, :text
  end
end
