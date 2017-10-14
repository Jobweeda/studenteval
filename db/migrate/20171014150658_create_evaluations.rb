class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.boolean :red
      t.boolean :yellow
      t.boolean :green
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
