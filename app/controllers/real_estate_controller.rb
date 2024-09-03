class RealEstateController < ApplicationController
  def test
    render json: {message: "Hello"}
  end

  def listing
    render json: { listing:
      # house = RealEstate.find_by(id: 1)
      house = RealEstate.all
    }
  end

end
