class EarningsController < ApplicationController
  before_action :set_earning, only: %i[show edit update destroy]

  def index
    @earnings = Earning.where(user_id: current_user)
  end

  def show; end

  def new
    @earning = Earning.new
  end

  def create
    @earning = Earning.new(earning_params)
    @earning.account = Account.find(params[:account_id])
    @earning.user = current_user
    if @earning.save
      redirect_to account_path(@earning.account)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @earning.update(earning_params)
      redirect_to account_path(@earning.account)
    else
      render :edit
    end
  end

  def destroy
    @earning.destroy
    redirect_to account_path(@earning.account)
  end

  private

  def set_earning
    @earning = Earning.find(params[:id])
  end

  def earning_params
    params.require(:earning).permit(:account_id, :balance, :date, :currency, :category, :beneficiary, :note)
  end
end
