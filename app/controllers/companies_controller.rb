class CompaniesController < ApplicationController
    def index
        @companies = Company.all  
    end

    def show
        @company = Company.find(params[:id])
        @games = @company.games
    end

    def new
        @company = Company.new
    end

    def create
        Company.create(params.require(:company).permit(:name, :platform, :logo))
        redirect_to companies_path
      end

      def edit
        @company  = Company.find(params[:id])
      end

      def update
        company = Company.find(params[:id])
        company.update(params.require(:artist).permit(:name, :platform, :logo))
          
        redirect_to company
      end

      def destroy
        Company.find(params[:id]).destroy
      
        redirect_to companies_path
      end
end
