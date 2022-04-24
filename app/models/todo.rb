class Todo < ApplicationRecord
  validates :description, presence: true, uniqueness: {scope: :list_id}

  belongs_to :list

end
