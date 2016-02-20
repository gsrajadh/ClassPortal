class Course < ActiveRecord::Base

  has_many  :enrollments
  has_many  :users
  has_one   :material

  validates :course_number, :presence=>true
  validates :title, :presence=>true
  validates :description, :presence=>true
  validates :start_date, :presence=>true
  validates :end_date, :presence=>true
  validates :status, :presence=>true
  
end
