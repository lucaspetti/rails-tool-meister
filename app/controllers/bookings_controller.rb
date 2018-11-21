class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @tool = Tool.find(params[:tool_id])
    @booking.tool = @tool
    @booking.user = current_user
    authorize @tool
    if @booking.save
      redirect_to tool_path(@booking.tool)
    else
      redirect_to tool_path(@booking.tool)
    end
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update(booking_params)
  #   redirect_to bookings_path
  # end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy
  #   redirect_to bookings_path
  # end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :tool_id, :user_id)
  end
end
