class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :content
  belongs_to :restaurant
end
