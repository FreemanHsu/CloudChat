class HomepageController < ApplicationController
  def index
  	@chatrooms = Chatroom.where(:privacy => false).order("popularity DESC, roomname DESC").limit(24)
  end
end
