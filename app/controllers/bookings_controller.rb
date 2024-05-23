class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @personalities = Personality.all
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @personality = Personality.find(params[:personality_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user # Ensure this line is based on your authentication setup
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully deleted.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:title, :description, :image_url)
  end
end

