class Setdefault < ActiveRecord::Migration
  def change
  	change_column :chatrooms, :roomcover, :string, :default => "ruby.jpg"  
  end
end
