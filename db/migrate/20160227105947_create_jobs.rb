class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.string :title, null: false
    	t.string :description
    	t.integer :owner_id, null: false
    	t.integer :hired_user_id
    	t.datetime :deadline, null: false
    	t.timestamps null: false
    end
  end
end
