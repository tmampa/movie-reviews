class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.string :body
      t.timestamps
    end
  end
end
