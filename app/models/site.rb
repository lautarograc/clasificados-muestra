# app/models/site.rb

class Site < ApplicationRecord
    has_many :categories
  
    validates :name, presence: true
    validates :url, presence: true, uniqueness: true
  end
  