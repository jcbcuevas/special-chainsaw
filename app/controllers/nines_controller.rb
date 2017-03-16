class NinesController < ApplicationController
  before_action :set_nine, only: [:show, :edit, :update, :destroy]

  # GET /nines
  # GET /nines.json
  def index
    @nines = Nine.all
  end

  # GET /nines/1
  # GET /nines/1.json
  def show
  end

  # GET /nines/new
  def new
    @nine = Nine.new
  end

  # GET /nines/1/edit
  def edit
  end

  # POST /nines
  # POST /nines.json
  def create
    @nine = Nine.new(nine_params)

    respond_to do |format|
      if @nine.save
        format.html { redirect_to @nine, notice: 'Nine was successfully created.' }
        format.json { render :show, status: :created, location: @nine }
      else
        format.html { render :new }
        format.json { render json: @nine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nines/1
  # PATCH/PUT /nines/1.json
  def update
    respond_to do |format|
      if @nine.update(nine_params)
        format.html { redirect_to @nine, notice: 'Nine was successfully updated.' }
        format.json { render :show, status: :ok, location: @nine }
      else
        format.html { render :edit }
        format.json { render json: @nine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nines/1
  # DELETE /nines/1.json
  def destroy
    @nine.destroy
    respond_to do |format|
      format.html { redirect_to nines_url, notice: 'Nine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nine
      @nine = Nine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nine_params
      params.fetch(:nine, {})
    end
end
