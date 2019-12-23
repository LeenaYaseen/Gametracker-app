class GamesController < ApplicationController
    def index
        @games = Game.all  
    end
    def new
        @company = Company.find(params[:company_id])
        @game = Game.new
      end

      def create
        puts params
        @company = Company.find(params[:game][:company_id])
        Game.create(params.require(:game).permit(:title, :genre, :cover , :status ,:company_id))
               
        redirect_to company
      end

      def edit
        @game  = Game.find(params[:id])
      end

      def update
        game = Game.find(params[:id])
        game.update(params.require(:game).permit(:status))
          
        redirect_to companies_path
      end

      def destroy
        Game.find(params[:id]).destroy
      
        redirect_to companies_path
      end
end
