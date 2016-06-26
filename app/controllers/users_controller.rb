class UsersController < ApplicationController

	def index
		render :index
	end

	# def create
	# 	user_params=params.require(:user).permit(:first_name, :last_name, :username, :email, :email_confirmation, :password, :password_confirmation, :image)
	# 	@user=User.new(user_params)
	# 	if @user.save
	# 		login(@user)
	# 		redirect_to "/user/#{user.id}"
	# 	else
	# 		redirect_to '/home', flash: {error: @user.errors.full_messages.to_sentence}
	# 	end
	# end
	#
	def new
		@user=User.new
		render :new
	end

	# def edit
	# 	@user = User.find(params[:id])
	# 	render :edit
	# end
	#
	# def show
	# 	@user=User.find(params[:id])
	# 	render :show
	# end
	#
	# def update
	# 	@user=User.find(params[:id])
	# 	user_params=require(:user).permit(:first_name, :last_name, :username, :email, :email_confirmation, :password, :password_confirmation, :image)
	# 	if User.update(@user.id, user_params)
	# 		redirect_to "/user/#{user.id}"
	# 	else
	# 		redirect_to "/edit", flash: {"Unable to update."}
	# 	end
	# end
	#
	# def destroy
	# 	@user=User.find(params[:id])
	# 	@user.destroy
	# 	redirect_to: "/home"
	# end
end
