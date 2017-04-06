class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  
  def index
    @employees = Employee.alphabetical.paginate(page: params[:page]).per_page(10)
    @active_employees = Employee.active.alphabetical
    @inactive_employees = Employee.inactive.alphabetical
  end

  def show
    @assignments = @employee.assignments
  end

  def new
    @employee = Employee.new
  end

  def edit
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
     # redirect_to employee_index_path, notice: "Successfully created employee"
     # format.html { redirect_to employee_show_path(@employee), notice: "Successfully created #{@employee.proper_name}." }
      redirect_to employee_show_path(@employee), notice: "Successfully created #{@employee.proper_name}."
    else
      render action: 'new'
    end
  end

  def update
  end

  def destroy
  end
  
  private
    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :ssn, :date_of_birth, :phone, :role, :active)
    end
end
