class HomeController < ApplicationController
  def index
  end
  def show
  	@customer = Customer.find(params[:id])
  	@take = Customer.take
  	@find_by = Customer.find_by name: 'surbhi'
  	@find_each = Customer.find_each

  	@customers = Customer.where("order_count = ?",params[:order])
  	@subset = Customer.where(name: ['arun','neha','surbhi'])
  	@order = Customer.select("name, id").group("id").having("sum(id)>5")
  	@find = Customer.find(4).orders.reorder('customer_id')
  	@join = Customer.joins( 'left outer join orders on orders.customer_id = customers.id')
  	@innerjoin = Customer.joins(:orders)
  	@orders = @innerjoin.orders


  end	
  def update
  end
  def  updatedata
    @customer =Customer.find(params[:id])
  end
  def updatefile
  	@customer =Customer.find(params[:id])
  	@customer=Customer.update(:name=>params[:name])
  end	



end
