class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :comments, :likes, :user
end
