json.extract! board, :id, :titulo, :user_id, :post_id, :created_at, :updated_at
json.url board_url(board, format: :json)
