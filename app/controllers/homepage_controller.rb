class HomepageController < ApplicationController
  def index
  	@chatrooms = Chatroom.where(:privacy => false).order("popularity DESC, roomname DESC").limit(24)
  	@n = Chatroom.where(:privacy => false).count
  	@@num = 0
  end
end
