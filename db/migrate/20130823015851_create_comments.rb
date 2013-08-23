class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :post_by
      t.text :post_content
      t.references :blog, index: true

      t.timestamps
    end
  end
end
