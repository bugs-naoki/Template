class SeminarTargetsController < ApplicationController
  before_action :set_seminar_target, only: [:show, :edit, :update, :destroy]

  # GET /seminar_targets
  def index
    @seminar_targets = SeminarTarget.all
  end

  # GET /seminar_targets/1
  def show; end

  # GET /seminar_targets/new
  def new
    @seminar_target = SeminarTarget.new
  end

  # GET /seminar_targets/1/edit
  def edit; end

  # POST /seminar_targets
  def create
    @seminar_target = SeminarTarget.new(seminar_target_params)

    if @seminar_target.save
      redirect_to @seminar_target, notice: "Seminar target was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /seminar_targets/1
  def update
    if @seminar_target.update(seminar_target_params)
      redirect_to @seminar_target, notice: "Seminar target was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /seminar_targets/1
  def destroy
    @seminar_target.destroy
    redirect_to seminar_targets_url, notice: "Seminar target was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_seminar_target
    @seminar_target = SeminarTarget.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def seminar_target_params
    params.require(:seminar_target).permit(:name)
  end
end
