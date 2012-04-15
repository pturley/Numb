class PhoneNumbersController < ApplicationController
   def index
    @phone_numbers = PhoneNumber.all
  end

  def new
    @phone_number = PhoneNumber.new
  end

  def create
    @phone_number = PhoneNumber.new params[:phone_number]
    if @phone_number.save
      redirect_to phone_numbers_path
    else
      render :action => 'new'
    end
  end

  def edit
    @phone_number = PhoneNumber.find params[:id]
  end

  def update
    @phone_number = PhoneNumber.find params[:id]
    if @phone_number.update_attributes params[:phone_number]
      redirect_to phone_numbers_path
    else
      render :action => :edit
    end
  end

  def destroy
    @phone_number = PhoneNumber.find params[:id]
    @phone_number.destroy
    redirect_to phone_numbers_path
  end

  def show
    @phone_number = PhoneNumber.find params[:id]
  end
end
