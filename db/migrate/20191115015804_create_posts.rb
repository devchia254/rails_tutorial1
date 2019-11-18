class CreatePosts < ActiveRecord::Migration[6.0]
  # The Model is part of the app that interacts with the DB
  # Command Line: "rails g model Post title:string".

  # Command Line: "rails db:migrate". Creates the DB based on the conditions stated from the Model
  # Note: the above command cannot be run twice on the same DB.
  # Adding "t.text :body" below then "rails db:migrate" will not add a new column in the DB. 
  # It is best not to edit an old migration then depend on a new migration.
  # Therefore create a new migration based on another command.
  def change
    create_table :posts do |t|
      t.string :title

      t.timestamps
    end
  end
end
