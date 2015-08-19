class CreateCharity < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.integer :abn, limit: 8
      t.string :charity_legal_name
      t.text :other_organisation_names
      t.text :operating_countries
      t.string :address_type
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :town_city
      t.string :state
      t.string :postcode
      t.string :country
      t.string :charity_website
      t.datetime :registration_date
      t.datetime :date_organisation_established
      t.string :charity_size
      t.integer :number_of_responsible_persons
      t.string :financial_year_end
      t.boolean :operates_in_act
      t.boolean :operates_in_nsw
      t.boolean :operates_in_nt
      t.boolean :operates_in_qld
      t.boolean :operates_in_sa
      t.boolean :operates_in_tas
      t.boolean :operates_in_vic
      t.boolean :operates_in_wa
      t.boolean :pbi
      t.boolean :hpc
      t.boolean :preventing_or_relieving_suffering_of_animals
      t.boolean :advancing_culture
      t.boolean :advancing_education
      t.boolean :advancing_health
      t.boolean :promote_or_oppose_a_change_to_law__government_poll_or_prac
      t.boolean :advancing_natual_environment
      t.boolean :promoting_or_protecting_human_rights
      t.boolean :purposes_beneficial_to_ther_general_public_and_other_analogous
      t.boolean :promoting_reconciliation__mutual_respect_and_tolerance
      t.boolean :advancing_religion
      t.boolean :advancing_social_or_public_welfare
      t.boolean :advancing_security_or_safety_of_australia_or_australian_public
      t.boolean :another_purpose_beneficial_to_the_community
      t.boolean :aboriginal_or_tsi
      t.boolean :aged_persons
      t.boolean :children
      t.boolean :communities_overseas
      t.boolean :ethnic_groups
      t.boolean :gay__lesbian__bisexual
      t.boolean :general_community_in_australia
      t.boolean :men
      t.boolean :migrants__refugees_or_asylum_seekers
      t.boolean :pre_post_release_offenders
      t.boolean :people_with_chronic_illness
      t.boolean :people_with_disabilities
      t.boolean :people_at_risk_of_homelessness
      t.boolean :unemployed_persons
      t.boolean :veterans_or_their_families
      t.boolean :victims_of_crime
      t.boolean :victims_of_disasters
      t.boolean :women
      t.boolean :youth
    end
  end
end
