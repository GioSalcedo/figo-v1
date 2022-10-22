class BudgetsController < ApplicationController
  before_action :set_budget, only: %i[show edit update destroy]
  def index
    @budgets = current_user.budgets
  end

  def show; end

  def new
    @budget = Budget.new
    @business = Business.find(params[:business_id])
  end

  def create
    @budget = Budget.new(budget_params)
    @business = Business.find(params[:business_id])
    @budget.business_id = @business.id
    if @budget.save
      redirect_to @budget
    else
      render :new
    end
  end

  def edit; end

  def update
    if @budget.update(budget_params)
      redirect_to @budget
    else
      render :edit
    end
  end

  def destroy
    @budget.destroy
    redirect_to budgets_url
  end

  private

  def set_budget
    @budget = Budget.find(params[:id])
  end

  def budget_params
    params.require(:budget).permit(:business_id, :name, :date, :balance, :currency, :note)
  end
end
