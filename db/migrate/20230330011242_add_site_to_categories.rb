class AddSiteToCategories < ActiveRecord::Migration[7.0]
  def change
    #site_id could be null
    add_reference :categories, :site, foreign_key: true, null: true
  end
end
