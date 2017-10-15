class AddCurrentColorToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :current_color, :string
  end
end
