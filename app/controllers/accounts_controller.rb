class AccountsController < ApplicationController
	def index
		@accounts = Account.all
	end

	def create
		@account = Account.create(date: params [:account],title: params[:account][:title], amount: params[:account][:amount])
		 redirect_to root_path
	end

	private 

	def account_params
		params.require(:account).permit(:date, :title, :amount)
	end
end
