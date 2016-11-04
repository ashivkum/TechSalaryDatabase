require 'TechSalaryEntry'

class TechSalaryController < ApplicationController

	FIVE_HUNDRED_ERROR_MESSAGE = "An Internal Server Error has occured.  Please contact the webmaster"
	CREATED_ERROR_MESSAGE = "Salary successfully created!"

	def create_new_salary
		params = request.request_parameters.symbolize_keys
		@tech_salary = TechSalaryEntry.new
		begin
			@tech_salary.create_new_salary(request.request_parameters)
		rescue ArgumentError => error
			render :json => { :output => error.message }, :status => 400
			return
		rescue Exception => error
			render :json => { :output => FIVE_HUNDRED_ERROR_MESSAGE }, :status => 500
			return
		end
		render :json => { :output => CREATED_ERROR_MESSAGE }, :status => 201
		return
	end

	def get_all_salaries
		params = request.query_parameters.symbolize_keys
		begin
			all_salaries = TechSalaryEntry.new.search_salaries(params)
		rescue Exception => error
			render :json => { :output => FIVE_HUNDRED_ERROR_MESSAGE }, :status => 500
			return
		end
		render :json => all_salaries, :status => 200
		return
	end

end