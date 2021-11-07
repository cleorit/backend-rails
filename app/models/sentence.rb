class Sentence < ApplicationRecord
  # has_one :next, class_name: "Sentence", foreign_key: "next_id"
  belongs_to :lang

  has_one    :next,     class_name: "Sentence", inverse_of: :previous, foreign_key: "next_id"
  belongs_to :previous, class_name: "Sentence", inverse_of: :next
end
