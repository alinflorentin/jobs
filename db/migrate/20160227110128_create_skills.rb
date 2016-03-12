class CreateSkills < ActiveRecord::Migration
  def change
    
    create_table :skills do |t|
    t.string :name
    t.text :description
 
    t.timestamps null: false
    
    end
    
    # create_table :users_skils do |t|
	
	   # end	
    
    # create_table :jobs_skils do |t|

    # end
  end
end
