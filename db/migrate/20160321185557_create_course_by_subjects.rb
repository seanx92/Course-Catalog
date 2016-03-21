class CreateCourseBySubjects < ActiveRecord::Migration
  def change
    create_table :course_by_subjects do |t|
      t.string :subject_id
      t.string :course_id
      t.string :course_name

      t.timestamps null: false
    end
  end
end
