class ReportsController < ApplicationController
  def index
    @front_views = FrontView.all
    @employees = Employee.all
  end

  def generate_report
    @front_views = FrontView.all
    @employees = Employee.all

  end

  def show
    @front_views = FrontView.find(params[:id])
    @employees = Employee.find(paramns[:id])
  end

  private

  def employee_params
    params.require(:employee).permit(:email, :name, :position, :employee_num, :employee_private_num)
  end

  def checks_params
    params.require(:front_view).permit(:check, :employee_id, :created_at, :updated_at)
  end
end
