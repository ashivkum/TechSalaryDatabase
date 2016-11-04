Rails.application.routes.draw do
  post '/tech_salary', to: 'tech_salary#create_new_salary'
end
