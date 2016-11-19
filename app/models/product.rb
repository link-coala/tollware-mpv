class Product < ActiveRecord::Base
  #activerecord relationship
  has_many :line_items
  has_many :orders, :through => :line_items
  #validation 
  validates :name, presence: true,
                    length: { minimum:  3}
end
