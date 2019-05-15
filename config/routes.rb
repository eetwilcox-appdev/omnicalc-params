Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  match("/flexible/square/:zebra", { :controller => "calc", :action => "flex_square", :via => "get" })
  match("/flexible/payment/:zebra/:giraffe/:elephant", { :controller => "calc", :action => "flex_pmt", :via => "get" })
  match("/square/new", { :controller => "calc", :action => "square_form", :via => "get" })
  match("/square/results", { :controller => "calc", :action => "process_square_form", :via => "get" })
end
