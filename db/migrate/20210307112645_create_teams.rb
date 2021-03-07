class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.references :user, foreign_key: true
      t.string  :teamname,       null: false
      t.integer :prefecture_id,     null: false
      t.integer :year,           null: false
      t.integer :age_id,            null: false
      t.integer :frequency_id,      null: false
      t.integer :level_id,          null: false
      t.integer :offer_id,          null: false
      t.string  :achievement,    null: false
      t.string  :location,       null: false
      t.timestamps
    end
  end
end
