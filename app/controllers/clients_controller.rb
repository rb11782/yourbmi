class ClientsController < ApplicationController

 def index
  @clients = Client.all
 end

  def new
  @client = Client.new
  end

  def create
  Client.create(client_params)
  redirect_to root_path
  end


  private

  def client_params
  params.require(:client).permit(:name, :weight_in_kg, :height_in_m, :bmi)
  end

end