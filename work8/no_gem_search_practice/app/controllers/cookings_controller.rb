class CookingsController < ApplicationController
  before_action :set_cooking, only: [:show]

  def index
    @genres = Genre.all
    @cookings = Cooking.all

    if params[:title].present?
      @cookings = @cookings.where("title LIKE ?", "%#{params[:title]}%")
    end

    if params[:genre_id].present?
      @cookings = @cookings.where(genre_id: params[:genre_id])
    end
  end

  def show
  end

  def new
    @cooking = Cooking.new
  end

  def create
    @cooking = current_user.cookings.build(cooking_params)
    if @cooking.save
      redirect_to cooking_path(@cooking)
    else
      render :new
    end
  end

  private

  def set_cooking
    @cooking = Cooking.find(params[:id])
  end

  def cooking_params
    params.require(:cooking).permit(:title, :content, :genre_id)
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
