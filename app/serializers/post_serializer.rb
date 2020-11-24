class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :image, :comments, :likes, :user
end
