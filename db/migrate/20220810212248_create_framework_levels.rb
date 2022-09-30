class CreateFrameworkLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :framework_levels do |t|
      t.integer :level
      t.references :framework, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
