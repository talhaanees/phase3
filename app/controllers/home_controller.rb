class HomeController < ApplicationController
  def about
    @employees = Employee.order(:id)
  end

  def contact
  end
end
