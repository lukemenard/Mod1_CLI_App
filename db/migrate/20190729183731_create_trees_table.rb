class CreateTreesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :trees do |t|
      t.string :latin_name
      t.string :common_name
    end
  end
end
