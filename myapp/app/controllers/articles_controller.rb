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

    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
   
        redirect_to articles_path
     end 
     
     
    def update
            @article = Article.find(params[:id])
           
            if @article.update(article_params)
              redirect_to @article
            else
              render 'edit'
            end
        end

    def edit
        @article = Article.find(params[:id])
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

