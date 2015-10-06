class TrainStopsController < ApplicationController
  before_action :set_train_stop, only: [:show, :edit, :update, :destroy]

  # GET /train_stops
  # GET /train_stops.json
  def index
    @train_stops = TrainStop.all
  end

  # GET /train_stops/1
  # GET /train_stops/1.json
  def show
  end

  # GET /train_stops/new
  def new
    @train_stop = TrainStop.new
  end

  # GET /train_stops/1/edit
  def edit
  end

  # POST /train_stops
  # POST /train_stops.json
  def create
    @train_stop = TrainStop.new(train_stop_params)

    respond_to do |format|
      if @train_stop.save
        format.html { redirect_to @train_stop, notice: 'Train stop was successfully created.' }
        format.json { render :show, status: :created, location: @train_stop }
      else
        format.html { render :new }
        format.json { render json: @train_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_stops/1
  # PATCH/PUT /train_stops/1.json
  def update
    respond_to do |format|
      if @train_stop.update(train_stop_params)
        format.html { redirect_to @train_stop, notice: 'Train stop was successfully updated.' }
        format.json { render :show, status: :ok, location: @train_stop }
      else
        format.html { render :edit }
        format.json { render json: @train_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_stops/1
  # DELETE /train_stops/1.json
  def destroy
    @train_stop.destroy
    respond_to do |format|
      format.html { redirect_to train_stops_url, notice: 'Train stop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_stop
      @train_stop = TrainStop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_stop_params
      params.require(:train_stop).permit(:name, :arrive_time, :depart_time, :line_id)
    end
end
