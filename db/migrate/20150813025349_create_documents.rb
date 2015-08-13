class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :attachment
      t.integer :dashboard_id
      t.references :dashboard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
