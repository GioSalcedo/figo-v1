class BusinessesController < ApplicationController
  before_action :set_business, only: %i[show edit update destroy]

  def index
    @businesses = Business.all
  end

  def show; end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(params[:business])
    if @business.save
      redirect_to @business
    else
      render :new
    end
  end

  def edit; end

  def update
    if @business.update_attributes(business_params)
      redirect_to @business
    else
      render :edit
    end
  end

  def destroy
    @business.destroy
    redirect_to business_index_url
  end

  private

  def set_business
    @business = Business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:user_id, :name, :description, :logo)
  end
end