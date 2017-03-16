class QuestionthreesController < ApplicationController
  before_action :set_questionthree, only: [:show, :edit, :update, :destroy]

  # GET /questionthrees
  # GET /questionthrees.json
  def index
    @questionthrees = Questionthree.all
  end

  # GET /questionthrees/1
  # GET /questionthrees/1.json
  def show
  end

  # GET /questionthrees/new
  def new
    @questionthree = Questionthree.new
  end

  # GET /questionthrees/1/edit
  def edit
  end

  # POST /questionthrees
  # POST /questionthrees.json
  def create
    @questionthree = Questionthree.new(questionthree_params)

    respond_to do |format|
      if @questionthree.save
        format.html { redirect_to @questionthree, notice: 'Questionthree was successfully created.' }
        format.json { render :show, status: :created, location: @questionthree }
      else
        format.html { render :new }
        format.json { render json: @questionthree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionthrees/1
  # PATCH/PUT /questionthrees/1.json
  def update
    respond_to do |format|
      if @questionthree.update(questionthree_params)
        format.html { redirect_to @questionthree, notice: 'Questionthree was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionthree }
      else
        format.html { render :edit }
        format.json { render json: @questionthree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionthrees/1
  # DELETE /questionthrees/1.json
  def destroy
    @questionthree.destroy
    respond_to do |format|
      format.html { redirect_to questionthrees_url, notice: 'Questionthree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionthree
      @questionthree = Questionthree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionthree_params
      params.fetch(:questionthree, {})
    end
end
