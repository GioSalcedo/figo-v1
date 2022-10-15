class BudgetsController < ApplicationController
  before_action :set_budget, only: %i[show edit update destroy]
  def index
    @budgets = Budget.all
  end

  def show; end

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      redirect_to @budget
    else
      render :new
    end
  end

  def edit; end

  def update
    if @budget.update_attributes(budget_params)
      redirect_to @budget
    else
      render :edit
    end
  end

  def destroy
    @budget.destroy
    redirect_to account_index_url
  end

  private

  def set_budget
    @budget = Budget.find(params[:id])
  end

  def budget_params
    params.require(:budget).permit(:business_id, :name, :date, :balance, :currency, :note)
  end
end
