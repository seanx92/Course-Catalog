class RemoveIdFromCourse < ActiveRecord::Migration
  def change
    remove_column :courses, :id, :string
  end
end
