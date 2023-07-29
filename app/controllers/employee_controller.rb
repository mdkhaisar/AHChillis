class EmployeeController < ApplicationController
  def update
    id = params[:employee]
    employee = Employee.find(id)
    puts "Employee : #{employee}"
  end
end
