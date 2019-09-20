require 'rails_helper'

describe "Cars API", type: :request do
  it "gets a list of Cars" do
    Car.create(name: 'Lightning McQueen', age: 25, enjoys: 'Being in First Place!!!!!!!!!!')
    get '/cars'
    json = JSON.parse(response.body)
    expect(response).to have_http_status(:ok)
    expect(json.length).to eq 1
  end

  it "creates a car" do
      car_params = {
          car: {
              name: "Boost",
              age: 2,
              enjoys: "Bragging about his cool new design"
          }
      }

      post '/cars', params: car_params
      expect(response).to have_http_status(:ok)
      new_car = Car.first
      expect(new_car.name).to eq("Boost")
  end

  it "doesn't create a car without a name" do
  car_params = {
    car: {
      age: 4,
      enjoys: 'Meow Mix, and plenty of sunshine.'
    }
  }

  post '/cars', params: car_params
  expect(response.status).to eq 422
  json=JSON.parse(response.body)
  expect(json['name']).to include "can't be blank"
end
end
