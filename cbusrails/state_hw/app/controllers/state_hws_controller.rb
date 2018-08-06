class StateHwsController < ApplicationController
  before_action :set_state_hw, only: [:show, :edit, :update, :destroy]

  # GET /state_hws
  # GET /state_hws.json
  def index
    @state_hws = StateHw.all
  end

  # GET /state_hws/1
  # GET /state_hws/1.json
  def show
  end

  # GET /state_hws/new
  def new
    @state_hw = StateHw.new
  end

  # GET /state_hws/1/edit
  def edit
  end

  # POST /state_hws
  # POST /state_hws.json
  def create
    @state_hw = StateHw.new(state_hw_params)

    respond_to do |format|
      if @state_hw.save
        format.html { redirect_to @state_hw, notice: 'State hw was successfully created.' }
        format.json { render :show, status: :created, location: @state_hw }
      else
        format.html { render :new }
        format.json { render json: @state_hw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_hws/1
  # PATCH/PUT /state_hws/1.json
  def update
    respond_to do |format|
      if @state_hw.update(state_hw_params)
        format.html { redirect_to @state_hw, notice: 'State hw was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_hw }
      else
        format.html { render :edit }
        format.json { render json: @state_hw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_hws/1
  # DELETE /state_hws/1.json
  def destroy
    @state_hw.destroy
    respond_to do |format|
      format.html { redirect_to state_hws_url, notice: 'State hw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_hw
      @state_hw = StateHw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_hw_params
      params.require(:state_hw).permit(:name, :capital, :population, :area)
    end
end
