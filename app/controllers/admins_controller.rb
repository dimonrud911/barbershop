class AdminsController < ApplicationController
  before_action :authenticate_barbermaster!, only: [:new, :create]

  def about
  end

  def index
    if current_barbermaster
      redirect_to admins_path
    end
  end

  def new
    @day_of_week = { 0 => "Monday", 1 => "Tuesday", 2 => "Wednesday", 3 => "Thursday", 4 => "Friday", 
                    5 => "Saturday", 6 => "Sunday" }
    @work_hour = Time.now
    @start = 8
    @end = 20
  end

  def create
    @admins = Admin.new(admin_params)
    @admins.start = params[:date][:start]
    @admins.end = params[:date][:end]
    # if @users.valid?
      @admins.save
    # else 
    #   render action: 'new'
    # end
end


  def admin_params
    params.require(:admins).permit(:wday)
  end
end
