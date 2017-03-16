class NopesController < ApplicationController
  before_action :set_nope, only: [:show, :edit, :update, :destroy]

  # GET /nopes
  # GET /nopes.json
  def index
    @nopes = Nope.all
  end

  # GET /nopes/1
  # GET /nopes/1.json
  def show
  end

  # GET /nopes/new
  def new
    @nope = Nope.new
  end

  # GET /nopes/1/edit
  def edit
  end

  # POST /nopes
  # POST /nopes.json
  def create
    @nope = Nope.new(nope_params)

    respond_to do |format|
      if @nope.save
        format.html { redirect_to @nope, notice: 'Nope was successfully created.' }
        format.json { render :show, status: :created, location: @nope }
      else
        format.html { render :new }
        format.json { render json: @nope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nopes/1
  # PATCH/PUT /nopes/1.json
  def update
    respond_to do |format|
      if @nope.update(nope_params)
        format.html { redirect_to @nope, notice: 'Nope was successfully updated.' }
        format.json { render :show, status: :ok, location: @nope }
      else
        format.html { render :edit }
        format.json { render json: @nope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nopes/1
  # DELETE /nopes/1.json
  def destroy
    @nope.destroy
    respond_to do |format|
      format.html { redirect_to nopes_url, notice: 'Nope was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nope
      @nope = Nope.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nope_params
      params.fetch(:nope, {})
    end
end
