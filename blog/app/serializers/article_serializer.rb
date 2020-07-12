class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :text
  has_many :comments, links: {
    related: -> (object) {
      "http://localhost:3000/api/articles/#{object.id}/comments"
    }
  }

  link :self do |object| 
    "http://localhost:3000/api/articles/#{object.id}"
  end
end
