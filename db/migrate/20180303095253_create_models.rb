class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.string :body
      t.integer :age
      t.timestamps null: false
    end
  end
end
