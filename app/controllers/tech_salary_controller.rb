require 'TechSalary'

class TechSalaryController < ApplicationController

	def create_new_salary
		params = request.request_parameters.symbolize_keys
		binding.pry
		@tech_salary = TechSalary.create(request.request_parameters)
		render :json => { :output => tech_salary }, :status => 201
	end
end