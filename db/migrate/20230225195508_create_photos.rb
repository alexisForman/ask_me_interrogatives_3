class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :good_path
      t.string :bad_path
      t.string :ordinary_path
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
