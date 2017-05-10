class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :registered_at, :postal_code, :phone, :movies_checked_out_count
  # has_many :movies
end
