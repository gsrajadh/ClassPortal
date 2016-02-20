class Enrollment < ActiveRecord::Base
    belongs_to :user
    belongs_to :course

    validates :grade, :presence=>true
    validates :status, :presence=>true
  
end
