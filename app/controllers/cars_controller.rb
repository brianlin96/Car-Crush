class CarsController < ApplicationController
    def index
        cars = Car.all
        render json: cars
    end

    def create
        car = Car.create(car_params)
        if car.valid?
            render json: car
        else
            render json: car.errors, status: :unprocessable_entity
        end
    end

    def show
        car = Car.find(params[:id])
        render json: car
    end

    def update
        car = Car.find(params[:id])
        car.update(name: params[:name], age: params[:age], enjoys: params[:enjoys])
        car.save
        render json: car
    end

    def destroy
        car = Car.find(params[:id])
        car.destroy
    end

    private
    def car_params
        params.require(:car).permit(:name, :age, :enjoys)
    end
end
