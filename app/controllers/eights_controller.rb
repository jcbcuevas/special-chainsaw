class EightsController < ApplicationController
  before_action :set_eight, only: [:show, :edit, :update, :destroy]

  # GET /eights
  # GET /eights.json
  def index
    @eights = Eight.all
  end

  # GET /eights/1
  # GET /eights/1.json
  def show
  end

  # GET /eights/new
  def new
    @eight = Eight.new
  end

  # GET /eights/1/edit
  def edit
  end

  # POST /eights
  # POST /eights.json
  def create
    @eight = Eight.new(eight_params)

    respond_to do |format|
      if @eight.save
        format.html { redirect_to @eight, notice: 'Eight was successfully created.' }
        format.json { render :show, status: :created, location: @eight }
      else
        format.html { render :new }
        format.json { render json: @eight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eights/1
  # PATCH/PUT /eights/1.json
  def update
    respond_to do |format|
      if @eight.update(eight_params)
        format.html { redirect_to @eight, notice: 'Eight was successfully updated.' }
        format.json { render :show, status: :ok, location: @eight }
      else
        format.html { render :edit }
        format.json { render json: @eight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eights/1
  # DELETE /eights/1.json
  def destroy
    @eight.destroy
    respond_to do |format|
      format.html { redirect_to eights_url, notice: 'Eight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eight
      @eight = Eight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eight_params
      params.fetch(:eight, {})
    end
end
