class BankingsController < ApplicationController
  enum status: [:created, :canceled, :payed, :completed]

  def played!

  end

  #this method should take one account and make balance transfer to the other account
  def transferencias
    @banking = Banking.find(params[:id])
    @banking.transferencias
    redirect_to @banking
  end
  def index
    @bankings = Banking.all
  end

  def show; end

  def new
    @bankings = Banking.new
  end

  def create
    @bakings = Banking.new(banking_params)
    if @bankings.save
      redirect_to bankings
    else
      render :new
    end
  end

  def edit; end

  def update
    if @baking.update_attributes(banking_params)
      redirect_to @banking
    else
      render :edit
    end
  end

  def destroy
    @banking.destroy
    redirect_to user_business_bankings
  end

  private

  def set_bankings
    @banking = Banking.find(params[:id])
  end

  def banking_params
    params.require(:banking).permit(:business_id, :earning_id, :egress_id, :account_id)
  end
end
