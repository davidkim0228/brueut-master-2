class Bamboo < ApplicationRecord
  has_many :bamboo_comments, dependent: :destroy
  validates :title,  :presence => true
  validates :content, :presence => true,
                    :length => { :minimum => 5 }
end