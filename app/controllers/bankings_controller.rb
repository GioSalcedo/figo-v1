class BankingsController < ApplicationController
  before_action :set_bankings, only: %i[show edit update destroy]

  def index
    @bankings = Banking.all
  end

  def show; end

  def new
    @banking = Banking.new
    @business = Business.find(params[:business_id])
  end

  def create
    sender_account = Account.find(params[:banking][:accounts][:sender_account].split[-1])
    receptor_account = Account.find(params[:banking][:accounts][:receptor_account].split[-1])
    currency = params[:banking][:accounts][:currency]
    category = params[:banking][:accounts][:category]
    date = Date.today
    beneficiary = params[:banking][:accounts][:beneficiary]
    note = params[:banking][:accounts][:note]
    balance = params[:banking][:accounts][:balance]
    earning = Earning.create(balance: balance.to_i, account_id: sender_account.id, currency: currency, category: category, date: date, beneficiary: beneficiary, note: note)
    egress = Egress.create(balance: balance.to_i, account_id: receptor_account.id, currency: currency, category: category, date: date, beneficiary: beneficiary, note: note)
    @banking = Banking.new(banking_params)
    @banking.earning = earning
    @banking.egress = egress
    @banking.user = current_user
    if @banking.save
      sender_account.balance -= params[:banking][:accounts][:balance].to_i
      sender_account.save
      receptor_account.balance += params[:banking][:accounts][:balance].to_i
      receptor_account.save
      redirect_to business_path(Business.find(params[:business_id]))
    else
      render :new
    end
  end

  def edit; end

  def update
    if @banking.update_attributes(banking_params)
      redirect_to @banking
    else
      render :edit
    end
  end

  def destroy
    @banking.destroy
    redirect_to businesses_path
  end

  private

  def set_bankings
    @banking = Banking.find(params[:id])
  end

  def banking_params
    params.require(:banking).permit(:user_id, :earning_id, :egress_id, :account_id)
  end
end
