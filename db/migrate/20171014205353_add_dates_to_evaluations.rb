class AddDatesToEvaluations < ActiveRecord::Migration[5.1]
  def change
    add_column :evaluations, :evaluationdate, :date
  end
end
