class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index

  end

  def new
    @place = Place.new
  end

  def create
    @place = current_user.places.create(place_params)
    if @place.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
  end

  private

  def place_params
    params.require(:place).permit(:name, :description)
  end
end
