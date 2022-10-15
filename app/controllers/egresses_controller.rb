class EgressesController < ApplicationController
  before_action :set_egress, only: [:show, :edit, :update, :destroy]
  def index
    @egresses = Egress.where(user_id: current_user)
  end

  def show; end

  def new
    @egress = Egress.new
  end

  def create
    @egress = Egress.new(egress_params)
    @egress.account = Account.find(params[:account_id])
    @egress.user = current_user
    if @egress.save
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
