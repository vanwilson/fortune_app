class MyExamplesController < ApplicationController
  def fortune_method
    render json: { message: "Beware a windfall of money." }
  end
end
