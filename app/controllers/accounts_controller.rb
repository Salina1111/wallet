class AccountsController < ApplicationController
	def index
		@accounts = Account.all
	end

	def create
		@account = Account.create(account_params)
		 redirect_to root_path
	end
	
	def edit
  		@account = Account.find(params[:id])
	end

	def new
		
	end


	private 

	def account_params
		params.require(:account).permit(:date, :title, :amount)
	end
end
