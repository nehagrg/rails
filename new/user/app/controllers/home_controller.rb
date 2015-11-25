class HomeController < ApplicationController
  def index
  end

  def create
  	@employee = Employee.new
  end

  def create_user
  	@employee = Employee.create(:name =>params[:employee][:name], :gender =>params[:employee][:gender])
  end

  def delete
  	@employee = Employee.new
  end

  def delete_user
  	@employee = Employee.where(:name =>params[:employee][:name], :gender =>params[:employee][:gender])
  	@employee.delete_all
  end

  def update
    @employee = Employee.new
  end

  def update_user
  	@employee = Employee.find_by(:id => params[:employee][:id])
  end

  def update_complete
  	@employee = Employee.find_by(:id => params[:employee][:id])
    @employee.update(:name =>params[:employee][:name], :gender =>params[:employee][:gender])
  end	


end
