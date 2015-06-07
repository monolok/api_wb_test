class WorldBankController < ApplicationController

def index

end

def search
	flash[:data] = WorldBank.country(params[:search])
	flash.keep(:data)
	render action: :index
end

end
