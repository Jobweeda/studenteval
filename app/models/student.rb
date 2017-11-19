class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  belongs_to :batch
  has_many :evaluations, dependent: :destroy

  def name
    "#{first_name} #{last_name}"
  end
  
end
