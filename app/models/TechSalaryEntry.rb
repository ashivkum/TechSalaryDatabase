require 'TechSalary'

class TechSalaryEntry

	REQUIRED_KEYS = [:job_title, :company_name, :city, :state, :education, :years, :base_salary]

	def create_new_salary(params)
		# Make sure the necessary keys are present
		REQUIRED_KEYS.each do |key|
			raise ArgumentError, "Required key '#{key}' not provided" unless params[key]
		end

		# Standardize the input before it goes into the DB
		params[:city].upcase!
		params[:state].upcase!
		TechSalary.create(params)
	end

	def get_all_salaries
		return TechSalary.all
	end
end