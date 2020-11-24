class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :bio, :username, :email, :posts, :comments, :likes, :profile_pic, :header_image
end
