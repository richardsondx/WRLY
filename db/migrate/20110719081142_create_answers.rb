class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :location
      t.text :body
      t.references :micropost
      t.integer :micropost_id

      t.timestamps
    end

  end

  def self.down
    drop_table :answers
  end
end
