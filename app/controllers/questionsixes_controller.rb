class QuestionsixesController < ApplicationController
  before_action :set_questionsix, only: [:show, :edit, :update, :destroy]

  # GET /questionsixes
  # GET /questionsixes.json
  def index
    @questionsixes = Questionsix.all
  end

  # GET /questionsixes/1
  # GET /questionsixes/1.json
  def show
  end

  # GET /questionsixes/new
  def new
    @questionsix = Questionsix.new
  end

  # GET /questionsixes/1/edit
  def edit
  end

  # POST /questionsixes
  # POST /questionsixes.json
  def create
    @questionsix = Questionsix.new(questionsix_params)

    respond_to do |format|
      if @questionsix.save
        format.html { redirect_to @questionsix, notice: 'Questionsix was successfully created.' }
        format.json { render :show, status: :created, location: @questionsix }
      else
        format.html { render :new }
        format.json { render json: @questionsix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionsixes/1
  # PATCH/PUT /questionsixes/1.json
  def update
    respond_to do |format|
      if @questionsix.update(questionsix_params)
        format.html { redirect_to @questionsix, notice: 'Questionsix was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionsix }
      else
        format.html { render :edit }
        format.json { render json: @questionsix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionsixes/1
  # DELETE /questionsixes/1.json
  def destroy
    @questionsix.destroy
    respond_to do |format|
      format.html { redirect_to questionsixes_url, notice: 'Questionsix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionsix
      @questionsix = Questionsix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionsix_params
      params.fetch(:questionsix, {})
    end
end
