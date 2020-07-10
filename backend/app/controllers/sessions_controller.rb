class SessionsController < ApplicationController

    def new
        admin = Admin.new
    end

    def index
        
    end
    
    def create
        # byebug
        admin = Admin.find_by(username: params[:username])
        if admin && admin.authenticate(params[:password])
            redirect_to '/admins'
        else 
            redirect_to '/'
        end
    end


    def admin_params
        params.require(:username).permit(:username,:password)
      end
end
