class AeroplanesController < ApplicationController
  before_action :set_aeroplane, only: [:show, :edit, :update, :destroy]

  # GET /aeroplanes
  # GET /aeroplanes.json
  def index
    @aeroplanes = Aeroplane.all
  end

  # GET /aeroplanes/1
  # GET /aeroplanes/1.json
  def show
    @trips = Trip.where(aeroplane_id: params[:id])
  end

  def homepage
    
  end

  # GET /aeroplanes/new
  def new
    @aeroplane = Aeroplane.new
  end

  # GET /aeroplanes/1/edit
  def edit
  end

  # POST /aeroplanes
  # POST /aeroplanes.json
  def create
    @aeroplane = Aeroplane.new(aeroplane_params)

    respond_to do |format|
      if @aeroplane.save
        format.html { redirect_to @aeroplane, notice: 'Aeroplane was successfully created.' }
        format.json { render :show, status: :created, location: @aeroplane }
      else
        format.html { render :new }
        format.json { render json: @aeroplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aeroplanes/1
  # PATCH/PUT /aeroplanes/1.json
  def update
    respond_to do |format|
      if @aeroplane.update(aeroplane_params)
        format.html { redirect_to @aeroplane, notice: 'Aeroplane was successfully updated.' }
        format.json { render :show, status: :ok, location: @aeroplane }
      else
        format.html { render :edit }
        format.json { render json: @aeroplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aeroplanes/1
  # DELETE /aeroplanes/1.json
  def destroy
    @aeroplane.destroy
    respond_to do |format|
      format.html { redirect_to aeroplanes_url, notice: 'Aeroplane was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aeroplane
      @aeroplane = Aeroplane.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aeroplane_params
      params.require(:aeroplane).permit(:plane_type,:seats, :bc_row, :bc_column, :bc_fare, :fc_row, :fc_column, :fc_fare, :ec_row, :ec_column, :ec_fare)
    end
end
