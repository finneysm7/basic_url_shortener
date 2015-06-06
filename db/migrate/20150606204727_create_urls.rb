class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :link, :null => false
      t.string :name, :null => false

      t.timestamps
    end
  end
end
