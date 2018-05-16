class CommentsController < ApplicationController
  def new
    @token = form_authenticity_token  
  end
  
  def create
    comment = Movie.new
    comment.title = params[:input_title]
    comment.content = params[:input_content]
    comment.save
    redirect_to "/comments/#{comment.id}"
  end
  
  def show 
    @comment = Movie. find params[:id]  
    
  end   
  
  def index
    @comments = Movie.all  
  
  end
  
end