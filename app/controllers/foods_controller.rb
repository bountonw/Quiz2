class FoodsController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(food_params)
    if @food.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])

    @food.update_attributes(food_params)
    if @food.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def destroy
    @food = Food.find_by_id(params[:id])
    if @food
      @food.destroy
      redirect_to root_path
    else
      return render text: "Not Allowed", status: :forbidden
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :ethnicity)
  end

end
