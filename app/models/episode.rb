class Episode < ActiveRecord::Base
  attr_accessible :player_id, :title, :total_points, :crying, 
  :right_reasons, :not_make_friends, :try_to_make_person_cry, :blame_parents, 
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


  def update_points
    total_points = 0
    total_points += 5*(self.state_in_control +
                        self.crying +
                        self.open_mouth_kissing +
                        self.unintentional_nudity +
                        self.verbal_fight +
                        self.drink_throw)
    total_points += 10*(self.win_elimination +
                        self.assault_inanimate_object +
                        self.right_reasons +
                        self.not_make_friends +
                        self.blame_parents +
                        self.plugging_career +
                        self.deny_coitus +
                        self.blaming_rules_for_not_assaulting +
                        self.request_assault +
                        self.vomiting)
    total_points += 15*(self.cold_sore +
                        self.hitting_on_host +
                        self.make_others_threaten_to_leave +
                        self.threaten_to_leave_show)
    total_points += 20*(self.inciting_vehical_with_siren_to_come +
                        self.call_cause_everyone_hates +
                        self.singing_to_two_or_more +
                        self.fraud_coitus_denial +
                        self.intentional_nudity +
                        self.kicked_out_of_establishment)
    total_points += 25*(self.killed_it + 
                        self.slander_ex_sex_skills + 
                        self.try_to_make_person_cry + 
                        self.coitus_or_covers + 
                        self.fraud_coitus_claim
                        self.concealed_erection +
                        self.physical_fight +
                        self.physical_fight_win +
                        self.staff_restrained +
                        self.extreme_intoxication +
                        self.unexplained_injury +
                        self.violate_stated_beliefs)
    total_points += 30*(self.subject_of_intervention +
                        self.std_scare +
                        self.leave_show)
    total_points += 50*(self.win_final +
                        self.threesome +
                        self.preggers_scare +
                        self.past_porn)
    total_points += 100*(self.cannibalism +
                         self.try_to_fight_host +
                         self.kicked_off_show)
    total_points -= 50*(self.injury_exit)
    self.total_points = total_points
    self.save
  end
  def calc_crying

  end
end
