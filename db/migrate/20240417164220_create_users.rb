class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :userid
      t.string :name
      t.string :email
      t.string :password
      t.string :team_id

      t.timestamps
    end
  end
end
