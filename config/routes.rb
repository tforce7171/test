Rails.application.routes.draw do



  get "/" => "home#top"
  get "users/new" => "users#new"
  post "users/create" => "users#create"
  get "users/index" => "users#index"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  get "calenders/mypage" => "calenders#mypage"
  get "calenders/new" => "calenders#new"
  post "calenders/create" => "calenders#create"
  get "calenders/join_form" => "calenders#join_form"
  post "calenders/join" => "calenders#join"
  get "calenders/calender/:id" => "calenders#calender"
  get "calenders/schedule/:calender_id" => "calenders#schedule"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
