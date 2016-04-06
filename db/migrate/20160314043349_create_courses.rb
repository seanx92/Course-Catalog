class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses, id: false do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.boolean :independent_study

      t.timestamps null: false
    end
    execute %Q{ ALTER TABLE "courses" ADD PRIMARY KEY ("code"); }
  end
end
