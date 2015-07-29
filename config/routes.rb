Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "home" })
  get("/instructions", { :controller => "calculations", :action => "instructions" })
  get("/square/:calc_one", { :controller => "calculations", :action => "square" })
  get("/square_root/:calc_one", { :controller => "calculations", :action => "square_root" })
  get("/random/:calc_one/:calc_two", { :controller => "calculations", :action => "random" })
  get("/payment/:calc_one/:calc_two/:calc_three", { :controller => "calculations", :action => "payment" })


end
