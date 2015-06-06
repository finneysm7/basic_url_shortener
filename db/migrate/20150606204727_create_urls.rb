class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.link_namestring :string

      t.timestamps
    end
  end
end
