class Gallery < ActiveRecord::Base
  attr_accessible :name
  has_many :paintings, dependent: :destroy
  
  validates :name, presence: true, length: {maximum: 40}
end
