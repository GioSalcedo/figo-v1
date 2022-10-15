class AccountsController < ApplicationController
  def index
    @account = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new

  end

  def create
    @account = Account.new(params[:account])
    if @account.save
      redirect_to @account
    else
      render :action => "new"
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(params[:account])
      redirect_to @account
    else
      render => "edits"
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to account_index_url
  end
end
