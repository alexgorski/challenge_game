class Episode < ActiveRecord::Base
  attr_accessible :player_id, :total_points, :crying, 
  :right_reasons, :try_to_make_person_cry, :blame_parents, 
  :call_cause_everyone_hates, :threaten_to_sue, :subject_of_intervention, 
  :plugging_career, :singing_to_two_or_more, :open_mouth_kissing, 
  :coitus_or_covers, :deny_coitus, :fraud_coitus_claim, :fraud_coitus_denial, 
  :threesome, :std_scare, :preggers_scare, :intentional_nudity, :unintentional_nudity, 
  :hitting_on_host, :concealed_erection, :past_porn, :verbal_fight, :physical_fight, 
  :physical_fight_win, :drink_throw, :unexplained_injury, :staff_restrained, 
  :request_assault, :blaming_rules_for_not_assaulting, :try_to_fight_host, 
  :extreme_intoxication, :vomiting, :kicked_out_of_establishment, :violate_stated_beliefs, 
  :attend_church, :non_court_ordered_volunteering, :kicked_off_show, 
  :make_others_threaten_to_leave, :threaten_to_leave_show, :leave_show, :killed_it, 
  :win_elimination, :win_final, :injury_exit, :state_in_control, :slander_ex_sex_skills, 
  :cannibalism, :inciting_vehical_with_siren_to_come, :assault_inanimate_object, 
  :cold_sore

  belongs_to :player
  validate :player_id, :presence => true

end
