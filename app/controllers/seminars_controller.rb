class SeminarsController < ApplicationController
  before_action :set_seminar, only: [:show, :edit, :update, :destroy]

  # GET /seminars
  def index
    @seminars = Seminar.all
  end

  # GET /seminars/1
  def show; end

  # GET /seminars/new
  def new
    @seminar = Seminar.new
  end

  # GET /seminars/1/edit
  def edit; end

  # POST /seminars
  def create
    @seminar = Seminar.new(seminar_params)

    if @seminar.save
      redirect_to @seminar, notice: "Seminar was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /seminars/1
  def update
    if @seminar.update(seminar_params)
      redirect_to @seminar, notice: "Seminar was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /seminars/1
  def destroy
    @seminar.destroy
    redirect_to seminars_url, notice: "Seminar was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_seminar
    @seminar = Seminar.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def seminar_params
    params.require(:seminar).permit(:title, :thumbnail, :thumbnail_mime_type, :target_id, :holding_method_id, :description,
                                    :pdf, :recommend, :appeal, :feedback, :lecturer_profiles, :datetime_of_the_seminar, :program,
                                    :course_fee, :preparation, :manual_link)
  end
end
