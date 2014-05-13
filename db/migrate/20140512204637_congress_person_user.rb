class CongressPersonUser < ActiveRecord::Migration
  def change
    create_join_table :users, :congress_people
  end
end
