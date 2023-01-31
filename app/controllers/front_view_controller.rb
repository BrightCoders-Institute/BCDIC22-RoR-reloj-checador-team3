class FrontViewController < ApplicationController
  def index
    nil
  end

  def create
    @employee = Employee.find_by(employee_params)
    unless @employee.nil?
      @check = @employee.front_views.new(check_params)
      @check.save ? flash[:notice] = 'Successfully check' : flash[:alert] = 'Checking faill'
    else
      flash[:alert] = 'Wrong number or password'
    end
    
    redirect_back(fallback_location: root_path)

  end

  private

  def employee_params
    params.permit(:employee_num, :employee_private_num)
  end

  def check_params
    params.permit(:check)
  end
end
