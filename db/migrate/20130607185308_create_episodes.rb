class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :player_id
      t.integer :total_points 
      t.integer :crying
      t.integer :right_reasons
      t.integer :try_to_make_person_cry
      t.integer :blame_parents
      t.integer :call_cause_everyone_hates
      t.integer :threaten_to_sue
      t.integer :subject_of_intervention
      t.integer :plugging_career
      t.integer :singing_to_two_or_more
      t.integer :open_mouth_kissing
      t.integer :coitus_or_covers
      t.integer :deny_coitus
      t.integer :fraud_coitus_claim
      t.integer :fraud_coitus_denial
      t.integer :threesome
      t.integer :std_scare
      t.integer :preggers_scare
      t.integer :intentional_nudity
      t.integer :unintentional_nudity
      t.integer :hitting_on_host
      t.integer :concealed_erection
      t.integer :past_porn
      t.integer :verbal_fight
      t.integer :physical_fight 
      t.integer :physical_fight_win
      t.integer :drink_throw
      t.integer :unexplained_injury
      t.integer :staff_restrained
      t.integer :request_assault
      t.integer :blaming_rules_for_not_assaulting
      t.integer :try_to_fight_host
      t.integer :extreme_intoxication
      t.integer :vomiting
      t.integer :kicked_out_of_establishment
      t.integer :violate_stated_beliefs
      t.integer :attend_church
      t.integer :non_court_ordered_volunteering
      t.integer :kicked_off_show
      t.integer :make_others_threaten_to_leave
      t.integer :threaten_to_leave_show
      t.integer :leave_show
      t.integer :killed_it
      t.integer :win_elimination
      t.integer :win_final
      t.integer :injury_exit
      t.integer :state_in_control
      t.integer :slander_ex_sex_skills 
      t.integer :cannibalism
      t.integer :inciting_vehical_with_siren_to_come
      t.integer :assault_inanimate_object
      t.integer :cold_sore
      t.timestamps
    end
  end
end
