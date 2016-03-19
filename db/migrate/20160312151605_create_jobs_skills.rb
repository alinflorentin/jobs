class CreateJobsSkills < ActiveRecord::Migration
  def change
    create_table :jobs_skills do |t|
		t.integer :job_id
    	t.integer :skill_id
      t.timestamps null: false
    end
  end
end
