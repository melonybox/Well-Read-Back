class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :tags

  belongs_to :book
end
