class Course < ActiveRecord::Base

  def self.do_item_search(subject_id: nil, title: nil)
    if subject_id != '0'
      courses = CourseBySubject.where(subject_id: subject_id)
    else
      courses = CourseBySubject.all
    end

    results = []
    courses.each do |course|
      if course.course_name.downcase.include?(title.downcase)
        results.push(Course.find(course.course_id))
      end
    end
    return results
  end

end
