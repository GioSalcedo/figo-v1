class EgressesController < ApplicationController
  before_action :set_egress, only: %i[show edit update destroy]

  def index
    @egresses = Egress.where(user_id: current_user)
  end

  def show; end

  def new
    @egress = Egress.new
    @egress.account = Account.find(params[:account_id])
  end

  def create
    @egress = Egress.new(egress_params)
    @egress.account = Account.find(params[:account_id])
    if @egress.save
      @account = @egress.account
      @account.balance -= @egress.balance
      @account.save
      redirect_to account_egresses_path(@account)
    else
      render :new, status: :unprocessable_entity
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
    redirect_to account_path(@egress.account)
  end

  private

  def set_egress
    @egress = Egress.find(params[:id])
  end

  def egress_params
    params.require(:egress).permit(:account_id, :balance, :date, :currency, :category, :beneficiary, :note)
  end
end
