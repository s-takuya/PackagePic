class Posting < ActiveRecord::Base
  has_one :photo, as: :imageable

  scope :recent, -> { order(id: :desc) }

  accepts_nested_attributes_for :photo

  CD = 0
  COSMETIC = 1

  CATEGORY_HASH = {
    CD => 'CDジャケット',
    COSMETIC => '化粧品パッケージ',
  }
end
