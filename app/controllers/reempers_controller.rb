class ReempersController < ApplicationController
  before_action :set_reemper, only: [:show, :edit, :update, :destroy]

  # GET /reempers
  # GET /reempers.json
  def index
    @reempers = Reemper.all
  end

  # GET /reempers/1
  # GET /reempers/1.json
  def show
  end

  # GET /reempers/new
  def new
    @reemper = Reemper.new
  end

  # GET /reempers/1/edit
  def edit
  end

  # POST /reempers
  # POST /reempers.json
  def create
    @reemper = Reemper.new(reemper_params)

    respond_to do |format|
      if @reemper.save
        format.html { redirect_to @reemper, notice: 'Reemper was successfully created.' }
        format.json { render :show, status: :created, location: @reemper }
      else
        format.html { render :new }
        format.json { render json: @reemper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reempers/1
  # PATCH/PUT /reempers/1.json
  def update
    respond_to do |format|
      if @reemper.update(reemper_params)
        format.html { redirect_to @reemper, notice: 'Reemper was successfully updated.' }
        format.json { render :show, status: :ok, location: @reemper }
      else
        format.html { render :edit }
        format.json { render json: @reemper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reempers/1
  # DELETE /reempers/1.json
  def destroy
    @reemper.destroy
    respond_to do |format|
      format.html { redirect_to reempers_url, notice: 'Reemper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reemper
      @reemper = Reemper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reemper_params
      params.require(:reemper).permit(:document_type, :document_numer, :profession_card, :academy_leve, :profession, :university, :university_state, :biography, :language, :specialty_id, :category_id, :user_id, :verified, :category_name, :specialty_name, :city, :valoration, :academy_level)
    end
    
end
