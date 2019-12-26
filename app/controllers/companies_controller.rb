class CompaniesController < ApplicationController

  before_action :authenticate_user!
    def index
        @companies = Company.where(user_id: current_user.id)  
    end

    def show
        @company = Company.find(params[:id])
        @games = @company.games
    end

    def new
        @company = Company.new
    end

    def create
        @company=Company.new(params.require(:company).permit(:name, :platform, :logo, :user_id))
        @company.user_id = current_user.id
        @company.save


        redirect_to companies_path
      end

      def edit
        @company  = Company.find(params[:id])
      end

      def update
        company = Company.find(params[:id])
        company.update(params.require(:company).permit(:name, :platform, :logo))
          
        redirect_to companies_path
      end

      def destroy
        Company.find(params[:id]).destroy
      
        redirect_to companies_path
      end
end
