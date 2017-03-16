class QuestionfoursController < ApplicationController
  before_action :set_questionfour, only: [:show, :edit, :update, :destroy]

  # GET /questionfours
  # GET /questionfours.json
  def index
    @questionfours = Questionfour.all
  end

  # GET /questionfours/1
  # GET /questionfours/1.json
  def show
  end

  # GET /questionfours/new
  def new
    @questionfour = Questionfour.new
  end

  # GET /questionfours/1/edit
  def edit
  end

  # POST /questionfours
  # POST /questionfours.json
  def create
    @questionfour = Questionfour.new(questionfour_params)

    respond_to do |format|
      if @questionfour.save
        format.html { redirect_to @questionfour, notice: 'Questionfour was successfully created.' }
        format.json { render :show, status: :created, location: @questionfour }
      else
        format.html { render :new }
        format.json { render json: @questionfour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionfours/1
  # PATCH/PUT /questionfours/1.json
  def update
    respond_to do |format|
      if @questionfour.update(questionfour_params)
        format.html { redirect_to @questionfour, notice: 'Questionfour was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionfour }
      else
        format.html { render :edit }
        format.json { render json: @questionfour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionfours/1
  # DELETE /questionfours/1.json
  def destroy
    @questionfour.destroy
    respond_to do |format|
      format.html { redirect_to questionfours_url, notice: 'Questionfour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionfour
      @questionfour = Questionfour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionfour_params
      params.fetch(:questionfour, {})
    end
end
