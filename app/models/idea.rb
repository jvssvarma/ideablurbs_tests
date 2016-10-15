class Idea
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  field :title, type: String
  field :blurb, type: String
  has_mongoid_attached_file :image, styles: {small: "300x300", medium: "600x600>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
