# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Clear the Database
User.delete_all
Tag.delete_all
Chatroom.delete_all
RoomTag.delete_all
RoomMem.delete_all
Message.delete_all
UserHasMsg.delete_all
Friendship.delete_all
ChatLog.delete_all

names = ['python', 'ruby', 'python2', 'cpp', 'h5', 'grunt', 'angular', 'java', 'haskell', 'lisp', 'lua', 'node', 'bower']
tagnames = ['UCLA', 'UCSD' , 'USC', 'MIT', 'Stanford', 'Harvad', 'UIUC']

# Add Test Users
for i in 1..100 do
	r = Random.rand(13)
	User.create(username: 'User'+i.to_s, avatar: names[r]+'.jpg', password:'123456')
end


# Add Test Chatrooms

for i in 1..100 do
	r = Random.rand(13)
	Chatroom.create(roomname: names[r],
					roomcover: names[r]+'.jpg',
					privacy: r&1 == 1? 'true' : 'false',
					memnum: '20',
					description:'Dummy '*Random.rand(3)+'Foo '*Random.rand(3),
					user_id: 1+Random.rand(100),
					popularity: Random.rand(100),
					key: r&1 == 1? '1234' : '')
end

tags = []
for item in tagnames do
	t = Tag.create(tagname: item)
	tags << t
end

for i in 1..100 do 
	chatroom = Chatroom.find(i)
	chatroom.tags = []
	chatroom.tags << tags[Random.rand(7)]
	for j in 1..3 do
		if Random.rand(100)>50
			chatroom.tags << tags[Random.rand(7)]
		end
	end
end

# Add Test RoomMem
for i in 1..100 do 
	chatroom = Chatroom.find(i)
	for j in 1..20 do
		user = User.find(j)
		chatroom.users << user
	end
end

# Add Test Friendship
for i in 1..100 do 
	user = User.find(i)
	for j in 1..5 do
		user2 = User.find(Random.rand(100)+1)
		user.friends << user2
	end
end

# Add Test Message
for i in 1..10 do
	user = User.find(i)
	for j in 1..5 do
		user2 = User.find(Random.rand(100)+1)
		msg = Message.create(content: names[Random.rand(13)])

		u_h_m = UserHasMsg.new
		u_h_m.sender = user
		u_h_m.receiver = user2
		u_h_m.message = msg
		msg.user_has_msg = u_h_m
		u_h_m.save
		msg.save
	end
end 