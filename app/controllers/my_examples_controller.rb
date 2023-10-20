class MyExamplesController < ApplicationController
  def fortune_method
    array = ["Beware a windfall of money.", "Follow your stomach.", "Pick the other one."]
    number = rand(3)
    render json: array[number]
  end
end
