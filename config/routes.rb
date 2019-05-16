Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  match("/flexible/square/:zebra", { :controller => "calc", :action => "flex_square", :via => "get" })
  match("/flexible/square_root/:zebra", { :controller => "calc", :action => "flex_square_root", :via => "get" })
  match("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "calc", :action => "flex_pmt", :via => "get" })
  match("/flexible/random/:min/:max", { :controller => "calc", :action => "flex_random", :via => "get" })
  
  match("/square/new", { :controller => "calc", :action => "square_form", :via => "get" })
  match("/square/results", { :controller => "calc", :action => "process_square_form", :via => "get" })
  
  match("/square_root/new", { :controller => "calc", :action => "square_root_form", :via => "get" }) 
  match("/square_root/results", { :controller => "calc", :action => "process_square_root_form", :via => "get" }) 
  
  match("/payment/new", { :controller => "calc", :action => "pmt_form", :via => "get" })
  match("/payment/results", { :controller => "calc", :action => "process_pmt_form", :via => "get" }) 
  
  match("/random/new", { :controller => "calc", :action => "random_form", :via => "get" })
  match("/random/results", { :controller => "calc", :action => "process_random_form", :via => "get" }) 
  
end
