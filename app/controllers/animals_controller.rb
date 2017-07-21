class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    name = params[:name]
    @animals = Animal.name_search(name)
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update!(animal_params)
    if @animal.update!(animal_params)
      render status: 200, json: {
       message: "Shelter animal was successfully updated."
       }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    if @animal.destroy
      render status: 200, json: {
       message: "Shelter animal has found a home."
       }
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def animal_params
    params.permit(:name, :animal_type, :adoption_fee, :age, :sex, :weight, :available)
  end
end
