class EgressesController < ApplicationController
  before_action :set_egress, only: %i[show edit update destroy]

  def index
    @earnings = Earning.where(account_id: params[:account_id])
  end

  def show; end

  def new
    @egress = Egress.new
    @accounts = current_user.accounts
  end

  def create
    @egress = Egress.new(egress_params)
    if @egress.save
      new_balance = @egress.account.balance - @egress.balance
      @egress.account.update(balance: new_balance)
      redirect_to account_path(@egress.account)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @egress.update(egress_params)
      redirect_to account_path(@egress.account)
    else
      render :edit
    end
  end

  def destroy
    @egress.destroy
    redirect_to businesses_path
  end

  private

  def set_egress
    @egress = Egress.find(params[:id])
  end

  def egress_params
    params.require(:egress).permit(:account_id, :balance, :date, :currency, :category, :beneficiary, :note)
  end
end
