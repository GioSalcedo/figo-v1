class EarningsController < ApplicationController
  before_action :set_earning, only: %i[show edit update destroy]

  def index
    @earnings = Earning.where(account_id: params[:account_id])
  end

  def show; end

  def new
    @earning = Earning.new
    @earning.account = Account.find(params[:account_id])
  end

  def create
    @earning = Earning.new(earning_params)
    @earning.account = Account.find(params[:account_id])
    if @earning.save
      @account = @earning.account
      @account.balance += @earning.balance
      @account.save
      redirect_to account_earnings_path(@account)
    else
      render :new, status: :unprocessable_entity
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


# def create
#   @transaction = Transaction.new(transaction_params)
#   @transaction.user = current_user
#   @transaction.category = Category.find(params[:transaction][:category_id])
#   @account = Account.find(params[:transaction][:account_id])
#   @transaction.account = @account
#   if @transaction.save
#     if @transaction.transaction_type == "expense"
#       @account.amount -= @transaction.amount
#       @account.save
#       redirect_to transactions_path
#     elsif @transaction.transaction_type == "income"
#       @account.amount += @transaction.amount
#       @account.save
#       redirect_to transactions_path
#     end
#   else
#     render :new, status: :unprocessable_entity
#   end
# end
