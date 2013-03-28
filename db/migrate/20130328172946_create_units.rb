class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :part
      t.string :serial
      t.references :contract, index: true

      t.timestamps
    end
  end
end
