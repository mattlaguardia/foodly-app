class UsersController < ApplicationController

	def index
		render :index
	end

	def create
		user=User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to "/users/#{user.id}"
		else
			redirect_to '/', flash: {error: user.errors.full_messages.to_sentence}
		end
	end

	def new
		@user=User.new
		render :new
	end

	def edit
		if current_user != User.find(params[:id])
			redirect_to root_path, flash: {error: "You're not authorized to view that page!"}
		else
			@user = User.find(params[:id])
			render :edit
		end
	end

	def show
		@likes = Like.all
		@dislikes = Dislike.all
		@user=User.find(params[:id])
		if current_user != User.find(params[:id])
			redirect_to root_path, flash: {error: "You're not authorized to view that page!"}
		else
			render :show
		end
	end

	def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
		if @user.save
			redirect_to "/users/#{@user.id}"
		else
			redirect_to "/"
		end
  end

	def destroy
		@user=User.find(params[:id])
		@user.destroy
		redirect_to new_user_path
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :first_name, :last_name, :password, :password_confirmation)
	end


end
