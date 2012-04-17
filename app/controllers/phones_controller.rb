class PhonesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @phones = Phone.all
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new params[:phone]
    if @phone.save
      redirect_to phones_path
    else
      render :action => 'new'
    end
  end

  def edit
    @phone = Phone.find params[:id]
  end

  def update
    @phone = Phone.find params[:id]
    if @phone.update_attributes params[:phone]
      redirect_to phones_path
    else
      render :action => :edit
    end
  end

  def destroy
    @phone = Phone.find params[:id]
    @phone.destroy
    redirect_to phones_path
  end

  def show
    @phone = Phone.find params[:id]
  end

end
