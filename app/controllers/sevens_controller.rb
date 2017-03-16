class SevensController < ApplicationController
  before_action :set_seven, only: [:show, :edit, :update, :destroy]

  # GET /sevens
  # GET /sevens.json
  def index
    @sevens = Seven.all
  end

  # GET /sevens/1
  # GET /sevens/1.json
  def show
  end

  # GET /sevens/new
  def new
    @seven = Seven.new
  end

  # GET /sevens/1/edit
  def edit
  end

  # POST /sevens
  # POST /sevens.json
  def create
    @seven = Seven.new(seven_params)

    respond_to do |format|
      if @seven.save
        format.html { redirect_to @seven, notice: 'Seven was successfully created.' }
        format.json { render :show, status: :created, location: @seven }
      else
        format.html { render :new }
        format.json { render json: @seven.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sevens/1
  # PATCH/PUT /sevens/1.json
  def update
    respond_to do |format|
      if @seven.update(seven_params)
        format.html { redirect_to @seven, notice: 'Seven was successfully updated.' }
        format.json { render :show, status: :ok, location: @seven }
      else
        format.html { render :edit }
        format.json { render json: @seven.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sevens/1
  # DELETE /sevens/1.json
  def destroy
    @seven.destroy
    respond_to do |format|
      format.html { redirect_to sevens_url, notice: 'Seven was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seven
      @seven = Seven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seven_params
      params.fetch(:seven, {})
    end
end
