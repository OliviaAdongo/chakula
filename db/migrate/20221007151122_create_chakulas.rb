class CreateChakulas < ActiveRecord::Migration[7.0]
  def change
    create_table :chakulas do |t|
      t.string :name
      t.string :side

      t.timestamps
    end
  end
end
