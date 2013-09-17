class CreatePublicPhotos < ActiveRecord::Migration
  def change
    create_table :public_photos do |t|
      t.string :caption
      t.attachment :image

      t.timestamps
    end
  end
end
