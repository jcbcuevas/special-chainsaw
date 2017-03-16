class QuestionfivesController < ApplicationController
  before_action :set_questionfife, only: [:show, :edit, :update, :destroy]

  # GET /questionfives
  # GET /questionfives.json
  def index
    @questionfives = Questionfive.all
  end

  # GET /questionfives/1
  # GET /questionfives/1.json
  def show
  end

  # GET /questionfives/new
  def new
    @questionfife = Questionfive.new
  end

  # GET /questionfives/1/edit
  def edit
  end

  # POST /questionfives
  # POST /questionfives.json
  def create
    @questionfife = Questionfive.new(questionfife_params)

    respond_to do |format|
      if @questionfife.save
        format.html { redirect_to @questionfife, notice: 'Questionfive was successfully created.' }
        format.json { render :show, status: :created, location: @questionfife }
      else
        format.html { render :new }
        format.json { render json: @questionfife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionfives/1
  # PATCH/PUT /questionfives/1.json
  def update
    respond_to do |format|
      if @questionfife.update(questionfife_params)
        format.html { redirect_to @questionfife, notice: 'Questionfive was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionfife }
      else
        format.html { render :edit }
        format.json { render json: @questionfife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionfives/1
  # DELETE /questionfives/1.json
  def destroy
    @questionfife.destroy
    respond_to do |format|
      format.html { redirect_to questionfives_url, notice: 'Questionfive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionfife
      @questionfife = Questionfive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionfife_params
      params.fetch(:questionfife, {})
    end
end
