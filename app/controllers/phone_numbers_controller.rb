class PhoneNumbersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_phone_numbers
  before_filter :load_phone_number

  def index
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
  end

  def update
    if @phone_number.update_attributes params[:phone_number]
      redirect_to phone_numbers_path
    else
      render :action => :edit
    end
  end

  def destroy
    @phone_number.destroy
    redirect_to phone_numbers_path
  end

  def show
  end

  private
  def load_phone_numbers
    @phone_numbers = PhoneNumber.all
  end

  def load_phone_number
    @phone_number = PhoneNumber.find params[:id]
  end
end
