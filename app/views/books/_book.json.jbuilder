json.extract! book, :id, :title, :edition, :condition, :price, :class, :description, :sold, :purchase_id, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)
