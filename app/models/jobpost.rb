class Jobpost < ApplicationRecord
  has_many :job_comments, dependent: :destroy
  validates :title,  :presence => true
  validates :content, :presence => true,
                    :length => { :minimum => 5 }
end
