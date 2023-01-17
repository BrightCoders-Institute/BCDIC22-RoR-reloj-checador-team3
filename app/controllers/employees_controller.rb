class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])

  end

  def new
  end

  def edit
    @employee = Employee.find(params[:id])

  end

  def update
    employee = Employee.find(params[:id])
    employee.update(employee_params)
    
    redirect_to root_path
  end


  def create
    employee = Employee.new(employee_params)
    employee.save
    redirect_to root_path
  end

  def destroy
    employee = Employee.find(params[:id])
    employee.destroy
    redirect_to root_path
  end

  private

  def employee_params
    params.require(:employee).permit(:email, :name, :position, :employee_num, :employee_private_num)
  end


end
