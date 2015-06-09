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