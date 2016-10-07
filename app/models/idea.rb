class Idea
  include Mongoid::Document
  field :title, type: String
  field :blurb, type: String
end
