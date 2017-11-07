class GameController < ApplicationController
    def index
        @games = Game.all
    end

    def new
        @game = Game.new
    end

    def create
        @game = Game.new
        @game.title = params[:game][:title]
        @game.description = params[:game][:description]
    end

    def show
        @game = Game.find(params[:id])
    end
end
