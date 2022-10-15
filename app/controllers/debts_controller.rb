class DebtsController < ApplicationController
  before_action :set_debt, only: %i[show edit update destroy]
  def index
    @debts = Debts.all
  end

  def show; end

  def new
    @debt = Debt.new
  end

  def create
    @debt = Debt.new(debt_params)
    if @debt.save
      redirect_to @debt
    else
      render :new
    end
  end

  def edit; end

  def update
    if @debt.update_attributes(debt_params)
      redirect_to @debt
    else
      render :edit
    end
  end

  def destroy
    @debt.destroy
    redirect_to account_index_url
  end

  private

  def set_debt
    @debt = Debt.find(params[:id])
  end

  def debt_params
    params.require(:debt).permit(:business_id, :name, :date, :balance, :currency, :note)
  end
end
