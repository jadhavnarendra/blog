class AddImageColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :image, :binary
  end
end
