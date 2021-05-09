class StoreController < ApplicationController
  before_action :set_category
  def index
    @page = 'store'
    @products = Product.all
  end

  def search
    query = params[:search]
    results = Product.where('name LIKE ?', "%#{query}%")

    if params[:filter] == 'Select Filter'
      @products = results
    else
      tag = params[:filter].gsub(/ /, '_').downcase!.to_sym
      @products = results.where(tag => true)
    end
  end

  private
  def set_category
    @cats = Category.all.where(display: true)
  end
end
