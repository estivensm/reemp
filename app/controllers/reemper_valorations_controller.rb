class ReemperValorationsController < ApplicationController
  before_action :set_reemper_valoration, only: [:show, :edit, :update, :destroy]

  # GET /reemper_valorations
  # GET /reemper_valorations.json
  def index
    @reemper_valorations = ReemperValoration.all
  end

  # GET /reemper_valorations/1
  # GET /reemper_valorations/1.json
  def show
  end

  # GET /reemper_valorations/new
  def new
    @reemper_valoration = ReemperValoration.new
  end

  # GET /reemper_valorations/1/edit
  def edit
  end

  # POST /reemper_valorations
  # POST /reemper_valorations.json
  def create
    @reemper_valoration = ReemperValoration.new(reemper_valoration_params)

    respond_to do |format|
      if @reemper_valoration.save
        format.html { redirect_to @reemper_valoration, notice: 'Reemper valoration was successfully created.' }
        format.json { render :show, status: :created, location: @reemper_valoration }
      else
        format.html { render :new }
        format.json { render json: @reemper_valoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reemper_valorations/1
  # PATCH/PUT /reemper_valorations/1.json
  def update
    respond_to do |format|
      if @reemper_valoration.update(reemper_valoration_params)
        format.html { redirect_to @reemper_valoration, notice: 'Reemper valoration was successfully updated.' }
        format.json { render :show, status: :ok, location: @reemper_valoration }
      else
        format.html { render :edit }
        format.json { render json: @reemper_valoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reemper_valorations/1
  # DELETE /reemper_valorations/1.json
  def destroy
    @reemper_valoration.destroy
    respond_to do |format|
      format.html { redirect_to reemper_valorations_url, notice: 'Reemper valoration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reemper_valoration
      @reemper_valoration = ReemperValoration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reemper_valoration_params
      params.require(:reemper_valoration).permit(:user_id_id, :reemper_id, :valoration, :description)
    end
end
