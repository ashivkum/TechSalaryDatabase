Rails.application.routes.draw do
  post '/tech_salary', to: 'tech_salary#create_new_salary'
  get '/tech_salaries', to: 'tech_salary#get_all_salaries'
end
