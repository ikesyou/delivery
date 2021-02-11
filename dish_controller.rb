class DishController < ApplicationController
  def all
    @dishes=Dish.all
  end

  def update
    @dish=Dish.find_by(id:params[:id])
    @carts=Cart.new(name: @dish.name,price: @dish.price,count: params[:count])
    
    if @carts.save
    redirect_to("/dish/all")
    flash[:notice]="#{@dish.name}をカートへ追加しました"
    else
      render("dish/all");
    end
  end

  def cart
    @carts=Cart.all
  end

  def destroy
    @cart=Cart.find_by(id:params[:id])
    @cart.delete
    redirect_to("/dishes/cart");  
    flash[:notice]="#{@cart.name}をカートから削除しました"
  end
end
