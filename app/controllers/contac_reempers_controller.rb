class ContacReempersController < ApplicationController
  before_action :set_contac_reemper, only: [:show, :edit, :update, :destroy]

  # GET /contac_reempers
  # GET /contac_reempers.json
  def index
    usuario = User.where(id: current_user.id)
    @reemper = Reemper.where(user_id: usuario).all
    @contac_reempers = ContacReemper.where(reemper_id: @reemper).where(state_request: "pending")

    @answer_reemper = ContacReemper.where(state_request: "delivered").where(user_id: current_user.id)
  end

  # GET /contac_reempers/1
  # GET /contac_reempers/1.json
  def show
  end

  # GET /contac_reempers/new
  def new
    @contac_reemper = ContacReemper.new
    @reemper = Reemper.find(params[:reemper])
  end

  # GET /contac_reempers/1/edit
  def edit
    respond_to do |format|  
      format.js
    end 
  end

  # POST /contac_reempers
  # POST /contac_reempers.json
  def create
    @contac_reemper = ContacReemper.new(contac_reemper_params)

    respond_to do |format|  
      if @contac_reemper.save
        format.html { redirect_to @contac_reemper, notice: 'Contac reemper was successfully updated.' }
        format.json { render :show, status: :created, location: @contac_reemper }
        format.js
      else
        format.html { render :new }
        format.json { render json: @contac_reemper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contac_reempers/1
  # PATCH/PUT /contac_reempers/1.json
  def update
    respond_to do |format|
      if @contac_reemper.update(contac_reemper_params)
        format.html { redirect_to contac_reempers_path, notice: 'Contac reemper was successfully updated.' }
        format.json { render :show, status: :ok, location: @contac_reemper }
      else
        format.html { render :edit }
        format.json { render json: @contac_reemper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contac_reempers/1
  # DELETE /contac_reempers/1.json
  def destroy
    @contac_reemper.destroy
    respond_to do |format|
      format.html { redirect_to contac_reempers_url, notice: 'Contac reemper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contac_reemper
      @contac_reemper = ContacReemper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contac_reemper_params
      params.require(:contac_reemper).permit!
    end
end
