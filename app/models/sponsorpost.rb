class Sponsorpost < ApplicationRecord
  has_many :sponsor_comments, dependent: :destroy
  validates :title,  :presence => true
  validates :content, :presence => true,
                    :length => { :minimum => 5 }
end
