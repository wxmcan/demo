class TaobaokeProductsController < ApplicationController
  def index
    @taobaoke_products = TaobaokeProduct.all
  end

  def show
    @taobaoke_product = TaobaokeProduct.find(params[:id])
  end

  def new
    @taobaoke_product = TaobaokeProduct.new
  end

  def create
    @taobaoke_product = TaobaokeProduct.new(params[:taobaoke_product])
    if @taobaoke_product.save
      redirect_to @taobaoke_product, :notice => "Successfully created taobaoke product."
    else
      render :action => 'new'
    end
  end

  def edit
    @taobaoke_product = TaobaokeProduct.find(params[:id])
  end

  def update
    @taobaoke_product = TaobaokeProduct.find(params[:id])
    if @taobaoke_product.update_attributes(params[:taobaoke_product])
      redirect_to @taobaoke_product, :notice  => "Successfully updated taobaoke product."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @taobaoke_product = TaobaokeProduct.find(params[:id])
    @taobaoke_product.destroy
    redirect_to taobaoke_products_url, :notice => "Successfully destroyed taobaoke product."
  end
end
