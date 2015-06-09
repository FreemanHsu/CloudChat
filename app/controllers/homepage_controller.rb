class HomepageController < ApplicationController
  def index
  	@chatrooms = Chatroom.where(:privacy => false).limit(12)
  	@n = Chatroom.where(:privacy => false).count
  	@@num = 0
  end
end
