class ProductsController < ApplicationController

  def index

    if params[:sort]
      @products = Product.order(params[:sort] => params[:sort_order])
    elsif params[:discount]
      @products = Product.where("price < ?", 100)
    else
      @products = Product.all
    end
    # render :new
  end

  def show
    if params[:id] == "random"
      @product = Product.all.sample
    else
      @product = Product.find_by(id: params[:id])
    end
  end

  def new
  end
  def create
    @product = Product.new(id: params[:id], name: params[:name], price: params[:price], description: params[:description], rating: params[:rating], supplier_id: params[:supplier][:supplier_id])
    @product.save
    flash[:success] = "Taco made!"
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.assign_attributes(id: params[:id], name: params[:name], price: params[:price],  description: params[:description], rating: params[:rating])
    @product.save
    flash[:success] = "This taco has been updated!"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:warning] = "Taco destroyed!"
    redirect_to "/"
  end

  def search
    search_term = params[:user_search]
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
    render :index
  end


end
