class ArticlesController < ApplicationController
    def new
    end

    def create
       # byebug
       render plain: params[:article].inspect
    end
end

