class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(guest_params)
    respond_to do |format|
      if @guest.save
        format.html { redirect_to @guest, notice: 'Guest account created successfully' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @guest = Guest.find(params[:id])
  end

  private

  def guest_params
    params.require(:guest).permit(:password, :password_confirmation, :email, :name, :meeting_times, :desired_location)
  end
end
