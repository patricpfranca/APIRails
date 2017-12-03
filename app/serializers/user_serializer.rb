class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :accessToken
end
