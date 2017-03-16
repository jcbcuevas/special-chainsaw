class CongratsController < ApplicationController
  before_action :set_congrat, only: [:show, :edit, :update, :destroy]

  # GET /congrats
  # GET /congrats.json
  def index
    @congrats = Congrat.all
  end

  # GET /congrats/1
  # GET /congrats/1.json
  def show
  end

  # GET /congrats/new
  def new
    @congrat = Congrat.new
  end

  # GET /congrats/1/edit
  def edit
  end

  # POST /congrats
  # POST /congrats.json
  def create
    @congrat = Congrat.new(congrat_params)

    respond_to do |format|
      if @congrat.save
        format.html { redirect_to @congrat, notice: 'Congrat was successfully created.' }
        format.json { render :show, status: :created, location: @congrat }
      else
        format.html { render :new }
        format.json { render json: @congrat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congrats/1
  # PATCH/PUT /congrats/1.json
  def update
    respond_to do |format|
      if @congrat.update(congrat_params)
        format.html { redirect_to @congrat, notice: 'Congrat was successfully updated.' }
        format.json { render :show, status: :ok, location: @congrat }
      else
        format.html { render :edit }
        format.json { render json: @congrat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congrats/1
  # DELETE /congrats/1.json
  def destroy
    @congrat.destroy
    respond_to do |format|
      format.html { redirect_to congrats_url, notice: 'Congrat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congrat
      @congrat = Congrat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congrat_params
      params.fetch(:congrat, {})
    end
end
