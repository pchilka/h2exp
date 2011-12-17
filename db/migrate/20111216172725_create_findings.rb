class CreateFindings < ActiveRecord::Migration
  def change
    create_table :findings do |t|
      t.string :requirement
      t.text :finding
      t.string :risk

      t.timestamps
    end
  end
end
