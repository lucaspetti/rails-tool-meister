class BookingsController < ApplicationController
  skip_after_action :verify_authorized, only: [:my_bookings]

  def index
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @tool = Tool.find(params[:tool_id])
    @booking.tool = @tool
    @booking.user = current_user
    authorize @tool

    if @booking.save
      redirect_to my_bookings_path
    else
      redirect_to tool_path(@tool)
    end
  end

  def my_bookings
    @bookings = policy_scope(Booking.where(user: current_user))
    render :index
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :tool_id, :user_id)
  end
end
