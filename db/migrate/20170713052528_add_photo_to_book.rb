class AddPhotoToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :photo, :string
  end
end
