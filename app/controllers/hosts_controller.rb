class HostsController < ApplicationController
  def new
    @host = Host.new
  end

  def create
    @host = Host.create(host_params)
    respond_to do |format|
      if @host.save
        format.html { redirect_to @host, notice: 'Host account created successfully' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @host = Host.find(params[:id])
  end

  private

  def host_params
    params.require(:host).permit(:password, :password_confirmation, :email, :name, :availability, :address)
  end
end
