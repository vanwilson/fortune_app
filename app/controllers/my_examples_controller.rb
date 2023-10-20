class MyExamplesController < ApplicationController
  def fortune_method
    array = ["Beware a windfall of money.", "Follow your stomach.", "Pick the other one."]
    number = rand(3)
    render json: array[number]
  end

  def lotto_method
    numbers = []
    count = 0
    while count < 6
      number = rand(59) + 1
      numbers.push(number)
      count += 1
    end
    render json: numbers.join(" ")
  end
end
