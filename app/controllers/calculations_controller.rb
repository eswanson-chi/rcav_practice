class CalculationsController < ApplicationController
  def home
    render("home.html.erb")
  end

  def instructions
    render("instructions.html.erb")
  end

  def square

    @calc_one = params["calc_one"].to_i
    @ans_one = @calc_one**2

    render("square.html.erb")
  end

  def square_root

    @calc_one = params["calc_one"].to_i
    @ans_one = @calc_one**0.5

    render("square_root.html.erb")
  end

  def random

    calc_one = params["calc_one"].to_i
    calc_two = params["calc_two"].to_i

    @ans_one = rand(calc_one..calc_two)

    render("random.html.erb")
  end

  def payment

    apr = params["calc_one"].to_f
    @apr = apr/10
    @years = params["calc_two"].to_i
    @principal = params["calc_three"].to_f

    # A = Loan Amount
    @a = @principal
    # r = Rate of Interest (compounded) = APR/1200 [monthly]
    @r = @apr / 1200
    # N = Number of Payments = Number of Years * 12
    @n = @years * 12
    # P = Payment Amount
    @payment = ( @r * @a ) / ( 1 - (1+@r)**-@n)

    render("payment.html.erb")
  end



end
