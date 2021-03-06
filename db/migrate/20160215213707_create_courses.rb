class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_number
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :user_id

      t.timestamps

    end
  end
end
