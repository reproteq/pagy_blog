class CreatePostblogs < ActiveRecord::Migration[6.0]
  def change
    create_table :postblogs do |t|
      t.string :name
      t.string :text

      t.timestamps
    end
  end
end
