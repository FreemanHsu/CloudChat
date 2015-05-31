json.array!(@chatrooms) do |chatroom|
  json.extract! chatroom, :id, :roomname, :roomcover, :privacy, :popularity, :memnum, :roomno, :key, :creatorid
  json.url chatroom_url(chatroom, format: :json)
end
