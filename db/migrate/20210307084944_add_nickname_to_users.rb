class AddNicknameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :name_kana, :string
    add_column :users, :birthday, :date
    add_column :users, :term_id, :integer
    add_column :users, :level_id, :integer
    add_column :users, :frequency_id, :integer
    add_column :users, :registration_id, :integer
    add_column :users, :prefecture_id, :integer
    add_column :users, :city, :string
    add_column :users, :achievement, :string
  end
end
