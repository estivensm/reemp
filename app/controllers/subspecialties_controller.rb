class SubspecialtiesController < ApplicationController
  before_action :set_subspecialty, only: [:show, :edit, :update, :destroy]

  # GET /subspecialties
  # GET /subspecialties.json
  def index
    @subspecialties = Subspecialty.all
  end

  # GET /subspecialties/1
  # GET /subspecialties/1.json
  def show
  end

  # GET /subspecialties/new
  def new
    @subspecialty = Subspecialty.new
  end

  # GET /subspecialties/1/edit
  def edit
  end

  # POST /subspecialties
  # POST /subspecialties.json
  def create
    @subspecialty = Subspecialty.new(subspecialty_params)

    respond_to do |format|
      if @subspecialty.save
        format.html { redirect_to @subspecialty, notice: 'Subspecialty was successfully created.' }
        format.json { render :show, status: :created, location: @subspecialty }
      else
        format.html { render :new }
        format.json { render json: @subspecialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subspecialties/1
  # PATCH/PUT /subspecialties/1.json
  def update
    respond_to do |format|
      if @subspecialty.update(subspecialty_params)
        format.html { redirect_to @subspecialty, notice: 'Subspecialty was successfully updated.' }
        format.json { render :show, status: :ok, location: @subspecialty }
      else
        format.html { render :edit }
        format.json { render json: @subspecialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subspecialties/1
  # DELETE /subspecialties/1.json
  def destroy
    @subspecialty.destroy
    respond_to do |format|
      format.html { redirect_to subspecialties_url, notice: 'Subspecialty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subspecialty
      @subspecialty = Subspecialty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subspecialty_params
      params.require(:subspecialty).permit(:specialty_id, :name, :description, :code)
    end
end
