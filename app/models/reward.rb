class Reward < ActiveRecord::Base
  belongs_to :campaign
  #validations?
  validates :amount, presence: true, numericality: {greater_than: 0}
  validates :description, presence: true
end
