class Graduate < ApplicationRecord
  has_many :grad_comments, dependent: :destroy
  validates :title,  :presence => true
  validates :content, :presence => true,
                    :length => { :minimum => 5 }
end
