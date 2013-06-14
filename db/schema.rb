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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130613185310) do

  create_table "episodes", :force => true do |t|
    t.integer  "player_id"
    t.integer  "total_points"
    t.integer  "crying"
    t.integer  "right_reasons"
    t.integer  "try_to_make_person_cry"
    t.integer  "blame_parents"
    t.integer  "call_cause_everyone_hates"
    t.integer  "threaten_to_sue"
    t.integer  "subject_of_intervention"
    t.integer  "plugging_career"
    t.integer  "singing_to_two_or_more"
    t.integer  "open_mouth_kissing"
    t.integer  "coitus_or_covers"
    t.integer  "deny_coitus"
    t.integer  "fraud_coitus_claim"
    t.integer  "fraud_coitus_denial"
    t.integer  "threesome"
    t.integer  "std_scare"
    t.integer  "preggers_scare"
    t.integer  "intentional_nudity"
    t.integer  "unintentional_nudity"
    t.integer  "hitting_on_host"
    t.integer  "concealed_erection"
    t.integer  "past_porn"
    t.integer  "verbal_fight"
    t.integer  "physical_fight"
    t.integer  "physical_fight_win"
    t.integer  "drink_throw"
    t.integer  "unexplained_injury"
    t.integer  "staff_restrained"
    t.integer  "request_assault"
    t.integer  "blaming_rules_for_not_assaulting"
    t.integer  "try_to_fight_host"
    t.integer  "extreme_intoxication"
    t.integer  "vomiting"
    t.integer  "kicked_out_of_establishment"
    t.integer  "violate_stated_beliefs"
    t.integer  "attend_church"
    t.integer  "non_court_ordered_volunteering"
    t.integer  "kicked_off_show"
    t.integer  "make_others_threaten_to_leave"
    t.integer  "threaten_to_leave_show"
    t.integer  "leave_show"
    t.integer  "killed_it"
    t.integer  "win_elimination"
    t.integer  "win_final"
    t.integer  "injury_exit"
    t.integer  "state_in_control"
    t.integer  "slander_ex_sex_skills"
    t.integer  "cannibalism"
    t.integer  "inciting_vehical_with_siren_to_come"
    t.integer  "assault_inanimate_object"
    t.integer  "cold_sore"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "title"
    t.integer  "not_make_friends"
  end

  create_table "leagues", :force => true do |t|
    t.string   "title"
    t.date     "premier"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "season_id"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.integer  "total_points"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "season_id"
  end

  create_table "roster_players", :force => true do |t|
    t.string   "name"
    t.integer  "total_points"
    t.integer  "roster_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "player_id"
  end

  create_table "rosters", :force => true do |t|
    t.integer  "league_id"
    t.integer  "user_id"
    t.integer  "total_points"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "name"
  end

  create_table "seasons", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "role"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
