class TagController < ApplicationController
	def set
		@chatroom = Chatroom.find(params[:id])
	end

	def afterset
		@chatroom = Chatroom.find(params[:id])
		tmp = [params[:tag1], params[:tag2], params[:tag3] ]
		tags = Array.new(3)
		for i in 0..2 do

			if Tag.exists?(:tagname => tmp[i])
				tags[i] = Tag.where(:tagname => tmp[i])
			else 
				tags[i] = Tag.new
				tags[i].tagname = tmp[i] 
				tags[i].save
			end
			@chatroom.tags << tags[i]
		end  	
		redirect_to @chatroom
	end
end
