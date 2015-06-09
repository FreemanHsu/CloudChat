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
User.create(username: 'User1', password: '123456')
User.create(username: 'User2', password: '123456')
User.create(username: 'User3', password: '123456')
User.create(username: 'User4', password: '123456')
User.create(username: 'User5', password: '123456')
User.create(username: 'User6', password: '123456')
User.create(username: 'User7', password: '123456')
User.create(username: 'User8', password: '123456')
User.create(username: 'User9', password: '123456')
User.create(username: 'User10', password: '123456')
User.create(username: 'User11', password: '123456')
User.create(username: 'User12', password: '123456')
User.create(username: 'User13', password: '123456')
User.create(username: 'User14', password: '123456')
User.create(username: 'User15', password: '123456')
User.create(username: 'User16', password: '123456')
User.create(username: 'User17', password: '123456')
User.create(username: 'User18', password: '123456')
User.create(username: 'User19', password: '123456')
User.create(username: 'User20', password: '123456')

# Add Test Chatrooms
Chatroom.create(roomname:'Room1', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room2', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room3', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room4', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room5', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room6', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room7', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room8', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room9', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room10', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room11', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room12', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room13', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room14', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room15', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room16', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room17', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room18', roomcover:'ruby.jpg', privacy:'true', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room19', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room20', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')
Chatroom.create(roomname:'Room21', roomcover:'ruby.jpg', privacy:'false', memnum:'1', description:'Dummy description...', user_id:'1')