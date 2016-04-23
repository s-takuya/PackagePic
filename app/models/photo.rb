class Photo < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  delegate :url, to: :image

  # TODO: use dynamic configuration
  # see https://github.com/thoughtbot/paperclip#dynamic-configuration
  has_attached_file :image, styles: { medium:  '300x300> ', thumb:  '100x100> ' }
  validates_attachment_presence :image
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}
end
