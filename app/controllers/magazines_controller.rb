class MagazinesController < ApplicationController
  has_many :articles
  has_many :authors, through: :articles
  
  def index
    if params[:category]
      magazines = Magazine.where(category: params[:category])
      render json: magazines, include: [:articles, :authors]
    else
      magazines = Magazine.all
      render json: magazines, include: [:articles, :authors]
    end
  end

  def show
    magazine = Magazine.find(params[:id])
    render json: magazine
  end

  def create
    new_magazine = Magazine.create(name: params[:name], category: params[:category])
    render json: new_magazine
  end

  def update
    magazine = Magazine.find(params[:id])
    magazine.update(name: params[:name], category: params[:category])
    render json: magazine
  end

  def destroy
    magazine = Magazine.find(params[:id])
    magazine.destroy
    render json: {message: "Magazine deleted sucessfully"}
  end
end
