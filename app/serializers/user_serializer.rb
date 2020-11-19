class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :bio, :username, :email, :posts, :comments, :likes
end
