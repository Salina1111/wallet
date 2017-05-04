class AccountsController < ApplicationController
	
	def index
		@accounts = Account.all
	end

	def create
		@account = Account.create(account_params)
		if @account.valid?
      		flash[:success] = "Your record has been posted!"
    	else
      		flash[:alert] = "Woops! Looks like there has been an error!"
    	end
    		redirect_to root_path
  end
	
	def edit
  		@account = Account.find(params[:id])
	end

	def new
	end

	def update
		@account = Account.find(params[:id])

		if @account.update(account_params)
			flash[:success] = "New Record has been updated!"
			redirect_to root_path
		else
			flash[:alert] = "Woops!Looks like there has been an error!"
		
			redirect_to edit_account_path(params[ :id])
		end
		
	end

	def destroy
		@account = Account.find(params[:id])
		@account.destroy
		flash[:success] = "The record was successfully deleted!"
		redirect_to root_path
	end

	private 

	def account_params
		params.require(:account).permit(:date, :title, :amount)
	end

end
