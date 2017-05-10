class MovieSerializer < ActiveModel::Serializer
  attributes :title, :release_date
  # has_many :customers
end
