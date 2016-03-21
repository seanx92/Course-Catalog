require "test_helper"

class CourseBySubjectTest < ActiveSupport::TestCase
  def course_by_subject
    @course_by_subject ||= CourseBySubject.new
  end

  def test_valid
    assert course_by_subject.valid?
  end
end
