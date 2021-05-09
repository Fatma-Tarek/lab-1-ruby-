class ArticlesController < ApplicationController
    def new
        #@name = params["name"]
        @article = Article.new
    end

    # def create
    #     byebug
    #     ## ActiveModel::ForbiddenAttributesError
    #     # @article = Article.new(params[:article]) #create instance of variable    
    #     @article = Article.new(params.require(:article).permit(:title, :text))
    #     @article.save
    #     redirect_to @article
    # end
    def index
        @articles = Article.all
      end

    def create
        @article = Article.new(article_params)
 
        if @article.save
          redirect_to @article
        else
          render 'new'
        end
        end

    def show
        @article = Article.find(params[:id])
     end

    private
        #called when create anything
        def article_params
            params.require(:article).permit(:title, :text)
        end

        
end

