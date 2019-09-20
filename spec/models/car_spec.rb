require 'rails_helper'

RSpec.describe Car, type: :model do
    it "should validate name is present" do
        car = Car.create(name: "George")

        expect(car.errors[:name]).to be_empty
    end

    it "should validate age is present" do
        car = Car.create(age:2)

        expect(car.errors[:age]).to be_empty
    end

    it "should validate enjoys length is greater than 10" do
        car = Car.create(enjoys: "Koolaid")

        expect(car.errors[:enjoys]).to_not be_empty
    end
end
