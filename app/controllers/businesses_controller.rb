class BusinessesController < ApplicationController
  before_action :set_business, only: %i[show edit update destroy]

  def index
    @businesses = current_user.businesses
  end

  def show; end

  def new
    @business = Business.new
    @business.user = current_user
  end

  def create
    @business = Business.new(business_params)
    @business.user = current_user
    if @business.save
      redirect_to business_path(@business)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @business.update(business_params)
      redirect_to @business
    else
      render :edit
    end
  end

  def destroy
    @business.destroy
    redirect_to businesses_path
  end

  private

  def set_business
    @business = Business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:user_id, :name, :description, :logo)
  end
end
