class CalendersController < ApplicationController
  before_action :authenticate_user

  def create
    calender=Calender.new(
      name: params[:name],
      admin_id: session[:user_id],
      room_id: params[:room_id]
    )
    if calender.save
      redirect_to("/calenders/mypage")
      calender_admitted=CalenderAdmitted.new(
        user_id: session[:user_id],
        calender_id: calender.id
      )
      calender_admitted.save
    else
      redirect_to("/calenders/new")
    end
  end

  def mypage
    @calenders_admitted=CalenderAdmitted.where(user_id: session[:user_id])
  end

  def new
  end

  def join_form
  end

  def join
    if calender=Calender.find_by(
        name: params[:name],
        room_id: params[:room_id]
      )
      calender_admitted=CalenderAdmitted.new(
        user_id: session[:user_id],
        calender_id: calender.id
      )
      calender_admitted.save
      redirect_to("/calenders/mypage")
    else
      redirect_to("/calenders/join_form")
    end
  end

  def calender
        day = Date.current.beginning_of_month.day
        end_of_month = Date.current.end_of_month.day
        @days = []
        while day <= end_of_month
          @days[day-1] = day
          day=day+1
        end
    @calender_id=params[:id]
  end

  def schedule
    params[:check].each do | di1,di2 |
      if di2 == "1"
        if schedule = Schedule.find_by(
            user_id: session[:user_id],
            calender_id: params[:calender_id],
            month: Date.current.month,
            date: di1,
          )
          schedule.update(impossible: "1")
        else
          schedule = Schedule.new(
            user_id: session[:user_id],
            calender_id: params[:calender_id],
            month: Date.current.month,
            date: di1,
            impossible: "1"
          )
          schedule.save
        end
      else
        if schedule = Schedule.find_by(
            user_id: session[:user_id],
            calender_id: params[:calender_id],
            month: Date.current.month,
            date: di1,
          )
          schedule.update(impossible: "0")
        else
          schedule = Schedule.new(
            user_id: session[:user_id],
            calender_id: params[:calender_id],
            month: Date.current.month,
            date: di1,
            impossible: "0"
          )
          schedule.save
        end
      end
    end
  end


end
