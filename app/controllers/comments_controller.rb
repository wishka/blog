class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]
  
  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)

    redirect_to article_path(@article)

  end

  private
  def comment_params
    params.require(:comment).permit(:author, :body)# Запомнить!! Необходимо для разрешения использования params
  end

end
