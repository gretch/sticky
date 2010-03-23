ActionController::Routing::Routes.draw do |map|

  map.root :controller => :ideas

  map.signup "/signup", :controller => :users, :action => :new
  map.login "/login", :controller => :user_sessions, :action => :new
  map.logout "/logout", :controller => :user_sessions, :action => :destroy

  map.resources :ideas

  map.resources :users

  map.resources :user_sessions

  map.resources :comments

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
