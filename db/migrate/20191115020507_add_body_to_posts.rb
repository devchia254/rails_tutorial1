class AddBodyToPosts < ActiveRecord::Migration[6.0]
  
  # Command Line: "rails g migration add_body_to_posts body:text"
  # Adding extra columns in the database
  # "_posts" refers to the ":posts" table from the first migration.
  # The you run command "rails db:migrate"

  def change
    add_column :posts, :body, :text
  end
end
