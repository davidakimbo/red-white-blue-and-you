class CreateCongressPerson < ActiveRecord::Migration
  def change
    create_table :congress_people do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :img_url
      t.string :title
      t.string :chamber
      t.string :district
      t.boolean :in_office
      t.string :state
      t.string :state_name
      t.string :term_start
      t.string :term_end
      t.string :office
      t.string :phone
      t.string :contact_form
      t.string :website
      t.string :twitter_id
      t.string :facebook_id
      t.string :govtrack_id
    end
  end
end
