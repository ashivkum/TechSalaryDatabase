class SetupTechSalariesTable < ActiveRecord::Migration
	def up
		create_table :tech_salaries do |t|
			t.string :job_title
			t.string :company_name
			t.string :city
			t.string :state
			t.string :education
			t.integer :years
			t.integer :base_salary
			t.integer :bonuses
			t.integer :stock_grant
		end
	end

	def down
		drop_table :tech_salaries
	end
end