class HomepageController < ApplicationController
  def index
  	@chatrooms = Chatroom.all
  end
end
