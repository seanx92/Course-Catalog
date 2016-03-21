class CourseBySubjectsController < ApplicationController
  before_action :set_course_by_subject, only: [:show, :edit, :update, :destroy]

  # GET /course_by_subjects
  # GET /course_by_subjects.json
  def index
    @course_by_subjects = CourseBySubject.all
  end

  # GET /course_by_subjects/1
  # GET /course_by_subjects/1.json
  def show
  end

  # GET /course_by_subjects/new
  def new
    @course_by_subject = CourseBySubject.new
  end

  # GET /course_by_subjects/1/edit
  def edit
  end

  # POST /course_by_subjects
  # POST /course_by_subjects.json
  def create
    @course_by_subject = CourseBySubject.new(course_by_subject_params)

    respond_to do |format|
      if @course_by_subject.save
        format.html { redirect_to @course_by_subject, notice: 'Course by subject was successfully created.' }
        format.json { render :show, status: :created, location: @course_by_subject }
      else
        format.html { render :new }
        format.json { render json: @course_by_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_by_subjects/1
  # PATCH/PUT /course_by_subjects/1.json
  def update
    respond_to do |format|
      if @course_by_subject.update(course_by_subject_params)
        format.html { redirect_to @course_by_subject, notice: 'Course by subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_by_subject }
      else
        format.html { render :edit }
        format.json { render json: @course_by_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_by_subjects/1
  # DELETE /course_by_subjects/1.json
  def destroy
    @course_by_subject.destroy
    respond_to do |format|
      format.html { redirect_to course_by_subjects_url, notice: 'Course by subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_by_subject
      @course_by_subject = CourseBySubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_by_subject_params
      params.fetch(:course_by_subject, {})
    end
end
