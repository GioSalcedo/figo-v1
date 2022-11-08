class SavingsController < ApplicationController
  before_action :set_saving, only: %i[show edit update destroy]

  def index
    @savings = current_user.savings
  end

  def show; end

  def new
    @saving = Saving.new
    @businesses = current_user.businesses
  end

  def create
    @saving = Saving.new(saving_params)
    if @saving.save
      redirect_to savings_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @saving.update(saving_params)
      redirect_to savings_path
    else
      render :edit
    end
  end

  def destroy
    @saving.destroy
    redirect_to savings_path
  end

  private

  def set_saving
    @saving = Saving.find(params[:id])
  end

  def saving_params
    params.require(:saving).permit(:business_id, :name, :balance, :currency, :date, :note)
  end
end
