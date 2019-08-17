class BarbersController < ApplicationController
   
  def index    
  end
  
  def new
    @day_of_week = { 0 => "Monday", 1 => "Tuesday", 2 => "Wednesday", 3 => "Thursday", 4 => "Friday", 
    5 => "Saturday", 6 => "Sunday" }
    @work_hour = Time.now
    @start = 8
    @end = 20
  end

  def create
      @users = User.new(barber_params)
      @users.hour = params[:date][:hour]
      if @users.valid?
        @users.save
      else 
        render action: 'new'
      end
  end

  private 

  def barber_params
    params.require(:barbers).permit(:day, :phone)
  end
end
