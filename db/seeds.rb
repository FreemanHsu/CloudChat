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

# Add Test Users
<<<<<<< HEAD
User.create(username: 'User1', avatar: 'python.jpg', password: '123456')
User.create(username: 'User2', avatar: 'python2.jpg', password: '123456')
User.create(username: 'User3', avatar: 'node.jpg', password: '123456')
User.create(username: 'User4', avatar: 'python.jpg', password: '123456')
User.create(username: 'User5', avatar: 'ruby.jpg', password: '123456')
User.create(username: 'User6', avatar: 'python.jpg', password: '123456')
User.create(username: 'User7', avatar: 'python2.jpg', password: '123456')
User.create(username: 'User8', avatar: 'grunt.jpg', password: '123456')
User.create(username: 'User9', avatar: 'python.jpg', password: '123456')
User.create(username: 'User10', avatar: 'ruby.jpg', password: '123456')
User.create(username: 'User11', avatar: 'python.jpg', password: '123456')
User.create(username: 'User12', avatar: 'python.jpg', password: '123456')
User.create(username: 'User13', avatar: 'grunt.jpg', password: '123456')
User.create(username: 'User14', avatar: 'python.jpg', password: '123456')
User.create(username: 'User15', avatar: 'ruby.jpg', password: '123456')
User.create(username: 'User16', avatar: 'python2.jpg', password: '123456')
User.create(username: 'User17', avatar: 'node.jpg', password: '123456')
User.create(username: 'User18', avatar: 'grunt.jpg', password: '123456')
User.create(username: 'User19', avatar: 'python.jpg', password: '123456')
User.create(username: 'User20', avatar: 'grunt.jpg', password: '123456')

# Add Test Chatrooms
Chatroom.create(roomname:'python', roomcover:'python.jpg', privacy:'false', memnum:'1', description:'Dummy description Dummy description...', user_id:'1')
Chatroom.create(roomname:'ruby', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'python', roomcover:'python2.jpg', privacy:'false', memnum:'1', description:'Dummy Dummy Dummy Dummy description...', user_id:'1')
Chatroom.create(roomname:'cpp', roomcover:'cpp.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'h5', roomcover:'h5.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'ruby', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room7', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description Dummy description Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room8', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room9', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'grunt', roomcover:'grunt.jpg', privacy:'false', memnum:'1', description:'Dummy description description...', user_id:'1')
Chatroom.create(roomname:'angular', roomcover:'angular.png', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'java', roomcover:'java.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'haskell', roomcover:'haskell.jpg', privacy:'false', memnum:'1', description:'DummyDummyDummy description...', user_id:'1')
Chatroom.create(roomname:'lisp', roomcover:'lisp.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room15', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room16', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy Dummy Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room17', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room18', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'lua', roomcover:'lua.jpg', privacy:'false', memnum:'1', description:'DummyDummyDummy Dummy Dummy description...', user_id:'1')
Chatroom.create(roomname:'node', roomcover:'node.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'bower', roomcover:'bower.png', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')

# Add Test Tags
tag1 = Tag.create(tagname: 'Algorithm')
tag2 = Tag.create(tagname: 'OS')
tag3 = Tag.create(tagname: 'Database') 
for i in 1..20 do 
	chatroom = Chatroom.find(i)
	chatroom.tags = [tag1, tag2, tag3]
end

# Add Test RoomMem
for i in 1..20 do 
=======
for i in 1..100 do
	User.create(username: 'User'+i.to_s, password:'123456')
end

# Add Test Chatrooms
names = ['python', 'ruby', 'python2', 'cpp', 'h5', 'grunt', 'angular', 'java', 'haskell', 'lisp', 'lua', 'node', 'bower']

for i in 1..100 do
	r = Random.rand(13)
	Chatroom.create(roomname: names[r],
					roomcover: names[r]+'.jpg',
					privacy: r&1 == 1? 'true' : 'false',
					memnum: '20',
					description:'Dummy '*Random.rand(3)+'Foo '*Random.rand(3)+'Description...',
					user_id: 1+Random.rand(100),
					popularity: Random.rand(100),
					key: r&1 == 1? '1234' : '')
end

tags = []
for item in names do
	t = Tag.create(tagname: item)
	tags << t
end

for i in 1..100 do 
	chatroom = Chatroom.find(i)
	chatroom.tags = []
	for j in 1..5 do
		if Random.rand(100)>50
			chatroom.tags << tags[Random.rand(13)]
		end
	end
end

# Add Test RoomMem
for i in 1..100 do 
>>>>>>> 0df2b91f04dbc11d12b5b9ef4efb24ffefafcd68
	chatroom = Chatroom.find(i)
	for j in 1..20 do
		user = User.find(j)
		chatroom.users << user
	end
end

# Add Test Friendship
<<<<<<< HEAD
for i in 1..20 do 
	user = User.find(i)
	for j in 1..5 do
		user2 = User.find((20 - i + j ) % 20 + 1)
		user.friends << user2
	end
end
=======
for i in 1..100 do 
	user = User.find(i)
	for j in 1..5 do
		user2 = User.find(Random.rand(100)+1)
		user.friends << user2
	end
end
>>>>>>> 0df2b91f04dbc11d12b5b9ef4efb24ffefafcd68
