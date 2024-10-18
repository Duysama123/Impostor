json.extract! book, :id, :book_id, :title, :author_name, :publisher, :publication_year, :supplier_id, :created_at, :updated_at
json.url book_url(book, format: :json)
