class MyExamplesController < ApplicationController
  def fortune_method
    array = ["Beware a windfall of money.", "Follow your stomach.", "Pick the other one."]
    render json: { fortune: array.sample } # need to keep it in raw data form, so include hashes and arrays so that users know how to access the data.
  end

  def lotto_method
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    render json: numbers
  end

  # def page_visits_method
  #   number = 0
  #   render json: number
  # end                    Can't do track page visits until we learn how to interact with the data in the database.

  # def bottles_of_beer_method               ran out of time
  #   count = 99
  #   while count < 100 && > 0
  #     render json: "#{number} bottles of beer on the wall"
  # end
end
