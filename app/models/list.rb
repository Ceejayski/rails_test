class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :todos, dependent: :delete_all
end
