# controlador que muestra todos los negocios que puede tener un usuario.
class BusinessController < ApplicationController

  def index
    @business = Business.all
  end

  def show
    @business = Business.find(params[:id])
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(params[:business])
    if @business.save
      redirect_to @business, :notice => "Has creado tu empresa de forma exitosa."
    else
      render :action => 'new'
    end
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(params[:id])
    if @business.update_attributes(params[:business])
      redirect_to @business, :notice  => "Has editado tu empresa de forma exitosa."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to business_index_url, :notice => "Has eliminado esta empresa de forma exitosa."
  end

  

end
