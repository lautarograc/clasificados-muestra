# app/models/category.rb

class Category < ApplicationRecord
  belongs_to :parent, class_name: "Category", optional: true
  has_many :children, class_name: "Category", foreign_key: "parent_id"

  belongs_to :site, optional: true
end
