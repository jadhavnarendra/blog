class AddEmailToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :email, :string
    add_column :articles, :password, :string
  end
end
