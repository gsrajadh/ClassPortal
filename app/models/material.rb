class Material < ActiveRecord::Base
  belongs_to :course, :dependent => :destroy
  validates :content, :presence => true
end
