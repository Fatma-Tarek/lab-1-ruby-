class ArticlesController < ApplicationController
    def new
        @name = params["name"]
    end

    def create
       # byebug
       render plain: params[:article].inspect
    end
end

