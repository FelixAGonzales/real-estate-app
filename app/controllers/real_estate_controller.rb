class RealEstateController < ApplicationController
  def test
    render json: {message: "Hello"}
  end
end
