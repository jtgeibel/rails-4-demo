class CreateFailureReports < ActiveRecord::Migration
  def change
    create_table :failure_reports do |t|
      t.references :author, index: true
      t.references :unit, index: true
      t.string :subject
      t.text :description
      t.string :rma
      t.integer :failcode

      t.timestamps
    end
  end
end
