class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    def show
        user=User.find(params[:id])
        render json: user, include: ["notes"]
    end

    def user_signup
        user = User.new(user_params)
        if user.save
          session[:user_id] = user.id
          render json: user, status: :created
        else
          render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private 
      def user_params
        params.permit(:username, :email, :password, :password_digest)
      end
      def render_not_found
        render json: {error:"user not found"}, status: :not_found
    end
    
end
