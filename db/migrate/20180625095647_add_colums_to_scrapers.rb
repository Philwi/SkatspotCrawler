class AddColumsToScrapers < ActiveRecord::Migration[5.2]
  def change
    add_column :scrapers, :title, :string
    add_column :scrapers, :desc, :text
    add_column :scrapers, :category, :string
    add_column :scrapers, :lat, :string
    add_column :scrapers, :lng, :string
    add_column :scrapers, :images, :string, array: true, default: []
  end
end
