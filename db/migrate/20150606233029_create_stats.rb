class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :visits
      t.references :url, index: true

      t.timestamps
    end
  end
end
