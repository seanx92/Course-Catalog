class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :user_id, null: false
      t.string :course_id, null: false
      t.string :course_name, null: false

      t.timestamps null: false
    end
    add_index :enrollments, [:user_id, :course_id], :unique => true
  end
end
