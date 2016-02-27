class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.string :title, null: false
    	t.string :description
    	t.references :owner, null: false
    	t.references :hired_users
    	t.datetime :deadline, null: false
    	t.timestamps null: false
    end
  end
end
