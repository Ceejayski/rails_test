class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :description
      t.integer :status, default: 0
      t.belongs_to :list
      t.timestamps
    end
  end
end
