class CreateCourseBySubjects < ActiveRecord::Migration
  def change
    create_table :course_by_subjects do |t|
      t.string :subject_id, null: false
      t.string :course_id, null: false
      t.string :course_name, null: false

      t.timestamps null: false
    end
  end
end
