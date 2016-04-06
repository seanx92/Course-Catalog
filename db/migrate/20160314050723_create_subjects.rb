class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects, id: false do |t|
      t.string :id, null: false
      t.string :name, null: false
      t.string :abbreviation

      t.timestamps null: false
    end
    execute %Q{ ALTER TABLE "subjects" ADD PRIMARY KEY ("id"); }
  end
end
