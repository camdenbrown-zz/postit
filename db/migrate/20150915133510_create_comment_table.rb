class CreateCommentTable < ActiveRecord::Migration
  def change
    create_table :comment do |t|
      t.text :body
      t.references :user
      t.references :post
    end
  end
end
