class AccountsController < ApplicationController
  before_action :set_account, only: %i[show edit update destroy]
  def index
    @accounts = Account.where(business_id: current_user)
  end

  def show
    @accounts = Account.where(business_id: current_user)
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    @account.business_id = current_user.id
    if @account.save
      redirect_to @account, notice: 'La cuenta ha sido creada con éxito.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @account.update(account_params)
      redirect_to @account, notice: 'La cuenta ha sido actualizada con éxito.'
    else
      render :edit
    end
  end

  def destroy
    @account.destroy
    redirect_to accounts_path, notice: 'La cuenta ha sido eliminada con éxito.'
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:business_id, :name, :balance, :currency)
  end
end
