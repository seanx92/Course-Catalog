class SearchController < ApplicationController
  before_action :require_login

  def initialize
    results = Subject.all
    @subjects = {}
    @results = []
    results.each do |result|
      @subjects[result.name] = result.identity
    end
  end

  def index
    if params[:subject_id] != nil && params[:course_name] != nil
      courses = CourseBySubject.where(subject_id: params[:subject_id])
      @results = []
      courses.each do |course|
        if course.course_name.downcase.include?(params[:course_name].downcase)
          @results.push(course)
        end
      end
    end
  end

end
