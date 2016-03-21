require "test_helper"

class CourseBySubjectsControllerTest < ActionController::TestCase
  def course_by_subject
    @course_by_subject ||= course_by_subjects :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:course_by_subjects)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("CourseBySubject.count") do
      post :create, course_by_subject: {  }
    end

    assert_redirected_to course_by_subject_path(assigns(:course_by_subject))
  end

  def test_show
    get :show, id: course_by_subject
    assert_response :success
  end

  def test_edit
    get :edit, id: course_by_subject
    assert_response :success
  end

  def test_update
    put :update, id: course_by_subject, course_by_subject: {  }
    assert_redirected_to course_by_subject_path(assigns(:course_by_subject))
  end

  def test_destroy
    assert_difference("CourseBySubject.count", -1) do
      delete :destroy, id: course_by_subject
    end

    assert_redirected_to course_by_subjects_path
  end
end
