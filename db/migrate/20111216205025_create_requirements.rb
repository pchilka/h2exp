class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :reference
      t.string :shortdesc
      t.text :longdesc

      t.timestamps
    end
  end
end
