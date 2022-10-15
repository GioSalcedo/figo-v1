class BankingsController < ApplicationController
  def index
    @bakings = bakings.all
  end

  def show
    @bakings = bakings.find(params[:id])
  end

  def new
    @bakings = bakings.new
  end

  def create
  end

  def edit
    @bakings = bakings.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
