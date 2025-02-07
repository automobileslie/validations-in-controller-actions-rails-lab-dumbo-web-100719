class AuthorsController < ApplicationController
  def index
  end
  
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
    redirect_to author_path(@author)
    else
      render :new
      # redirect_to "/authors/new"
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
