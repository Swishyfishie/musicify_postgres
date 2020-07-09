class AdminsController < ApplicationController
    def index
      admin = Admin.first
      render json: admin.concerts.to_json(:except => [:created_at, :updated_at])
    end

    def show

    end
end
