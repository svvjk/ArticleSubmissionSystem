class ArticlesController < ApplicationController
def index

	if !session[:user_id]
		redirect_to :controller => "reg" , :action => "index"
	end	
end

def show
    @article = Article.find(params[:id])
end
def new
	if !session[:user_id]
		redirect_to :controller => "reg" , :action => "index"
	end	
		
end

def destroy
	
	
end

def create
  @article = Article.new(article_params)
  @article.save
  redirect_to @article
end
private
  def article_params
    params.require(:art).permit(:Articleno, :Regno, :abstract, :Articletype, :Language, :article)
  end

end