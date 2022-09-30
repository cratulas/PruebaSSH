class FrameworkLevelsController < ApplicationController
  before_action :set_framework_level, only: %i[ show edit update destroy ]

  # GET /framework_levels or /framework_levels.json
  def index
    @framework_levels = FrameworkLevel.all
  end

  # GET /framework_levels/1 or /framework_levels/1.json
  def show
  end

  # GET /framework_levels/new
  def new
    @framework_level = FrameworkLevel.new
  end

  # GET /framework_levels/1/edit
  def edit
  end

  # POST /framework_levels or /framework_levels.json
  def create
    @framework_level = FrameworkLevel.new(framework_level_params)

    respond_to do |format|
      if @framework_level.save
        format.html { redirect_to framework_level_url(@framework_level), notice: "Framework level was successfully created." }
        format.json { render :show, status: :created, location: @framework_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @framework_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /framework_levels/1 or /framework_levels/1.json
  def update
    respond_to do |format|
      if @framework_level.update(framework_level_params)
        format.html { redirect_to framework_level_url(@framework_level), notice: "Framework level was successfully updated." }
        format.json { render :show, status: :ok, location: @framework_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @framework_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /framework_levels/1 or /framework_levels/1.json
  def destroy
    @framework_level.destroy

    respond_to do |format|
      format.html { redirect_to framework_levels_url, notice: "Framework level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_framework_level
      @framework_level = FrameworkLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def framework_level_params
      params.require(:framework_level).permit(:level, :framework_id, :user_id)
    end
end
