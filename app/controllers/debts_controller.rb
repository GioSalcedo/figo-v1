class DebtsController < ApplicationController
  before_action :set_debt, only: %i[show edit update destroy]

  def index
    @debts = current_user.debts
  end

  def show; end

  def new
    @debt = Debt.new
    @businesses = current_user.businesses
  end

  def create
    @debt = Debt.new(debt_params)
    if @debt.save
      redirect_to debts_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @debt.update(debt_params)
      redirect_to debts_path
    else
      render :edit
    end
  end

  def destroy
    @debt.destroy
    redirect_to debts_path
  end

  private

  def set_debt
    @debt = Debt.find(params[:id])
  end

  def debt_params
    params.require(:debt).permit(:business_id, :name, :date, :balance, :currency, :note)
  end
end
