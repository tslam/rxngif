class CreatePicture < ActiveRecord::Migration
  def up
    create_table :pictures do |t|
      t.string :url
      t.string :caption
    end
  end

  def down
  end
end
