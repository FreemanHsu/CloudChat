# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150609120828) do

  create_table "chat_logs", force: true do |t|
    t.integer  "user_id"
    t.integer  "chatroom_id"
    t.text     "content"
    t.string   "msg_tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chatrooms", force: true do |t|
    t.string   "roomname"
    t.string   "roomcover",   default: "ruby.jpg"
    t.boolean  "privacy"
    t.integer  "popularity",  default: 1
    t.integer  "memnum",      default: 1
    t.integer  "roomno"
    t.integer  "key"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_mems", force: true do |t|
    t.integer  "chatroom_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_tags", force: true do |t|
    t.integer  "chatroom_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "tagname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_has_msgs", force: true do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.boolean  "send_status",    default: false
    t.boolean  "receive_status", default: false
    t.boolean  "is_read",        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "message_id"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "phone"
    t.string   "email"
    t.string   "nickname"
    t.boolean  "gender"
    t.string   "password_digest"
    t.string   "description"
    t.string   "avatar"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "auth_token"
  end

end
