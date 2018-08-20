class Market < ApplicationRecord
  has_many :market_comments, dependent: :destroy
  validates :title,  :presence => true
  validates :content, :presence => true,
                    :length => { :minimum => 5 }
end
