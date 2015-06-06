class ChangeDefaultOfChatroom < ActiveRecord::Migration
  def change
  	change_column :chatrooms, :roomcover, :string, :default => "assets/images/ruby.jpg"  
  	change_column :chatrooms, :popularity, :integer, :default => 1  
  	change_column :chatrooms, :memnum, :integer, :default => 1  
  	
  end
