class SavingsController < ApplicationController
  before_action :set_saving, only: %i[show edit update destroy]
  def index
    @savings = Saving.all
  end

  def show; end

  def new
    @saving = Saving.new
  end

  def create
    @saving = Saving.new(saving_params)
    if @saving.save
      redirect_to @saving
    else
      render :new
    end
  end

  def edit; end

  def update
    if @saving.update(saving_params)
      redirect_to @saving
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
    params.require(:saving).permit(:name, :balance, :currency, :date, :note)
  end
end
