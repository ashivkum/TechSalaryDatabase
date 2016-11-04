require 'pry'

class TechSalary < ActiveRecord::Base

	def self.create_new_salary(params)
		sanitize_input(params)
		binding.pry
	end

	private 

	def sanitize_input(params)
		params[:city].upcase!
		params[:state].upcase!
		params[:company_name].upcase!
	end
end
