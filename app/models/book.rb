class Book < ApplicationRecord
  belongs_to :supplier

validates_presence_of :title, :author_name, :publisher
validates_uniqueness_of :title
validates_numericality_of :publication_year

end
