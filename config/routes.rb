Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "home_page"})

  get("/square/new", { :controller => "application", :action => "blank_square_form" })
  get("/square/results", { :controller => "application", :action => "calculate_square" })

  get("/square_root/new", { :controller => "application", :action => "blank_sqrt_form" }) 
  get("/square_root/results", { :controller => "application", :action => "calculate_sqrt" })

  get("/random/new", { :controller => "application", :action => "blank_random_form" })
  get("/random/results", { :controller => "application", :action => "calculate_random" })
  
  get("/payment/new", { :controller => "application", :action => "blank_payment_form" })
  get("/payment/results", { :controller => "application", :action => "calculate_payment" })
end
