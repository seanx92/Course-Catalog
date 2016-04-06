class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors, id: false do |t|
      t.string :id, null: false
      t.string :email
      t.string :first
      t.string :middle
      t.string :last

      t.timestamps null: false
    end
    execute %Q{ ALTER TABLE "instructors" ADD PRIMARY KEY ("id"); }
  end
end
