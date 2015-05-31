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

ActiveRecord::Schema.define(version: 20150531113017) do

  create_table "chatrooms", force: true do |t|
    t.string   "roomname"
    t.string   "roomcover"
    t.boolean  "privacy"
    t.integer  "popularity"
    t.integer  "memnum"
    t.integer  "roomno"
    t.integer  "key"
    t.integer  "creatorid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "roommems", force: true do |t|
    t.integer  "roomid"
    t.integer  "memid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roomtags", force: true do |t|
    t.integer  "chatroomid"
    t.integer  "tagid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "tagname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "phone"
    t.string   "email"
    t.string   "nickname"
    t.boolean  "gender"
    t.string   "password"
    t.string   "description"
    t.string   "avatar"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
