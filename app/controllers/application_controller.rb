class ApplicationController < ActionController::Base
  
  def home_page

    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def blank_square_form

    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    @num = params.fetch("number").to_f
    @square_of_num = @num ** 2
      
    render({ :template => "calculation_templates/square_results.html.erb"})
  end
    
  def blank_sqrt_form

    render({ :template => "calculation_templates/sqrt_form.html.erb"})
  end
  
  def calculate_sqrt
    @number = params.fetch("user_number").to_f
    @number_sqrt = @number ** 0.5
    
    render({ :template => "calculation_templates/sqrt_results.html.erb"})
  end

  def blank_random_form

    render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random

    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper).to_f


    render({ :template => "calculation_templates/random_results.html.erb"})
  end

  def blank_payment_form

    render({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f
    @principal = params.fetch("user_pv").to_f

    n = @years * 12
    r = @apr / 100 /12
    @numerator = r * @principal
    @denominator = 1 - (1 + r) ** -n
    @payment = @numerator / @denominator 

    render({ :template => "calculation_templates/payment_results.html.erb"})
  end
end
