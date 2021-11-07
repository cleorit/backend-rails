class Sentence < ApplicationRecord
  belongs_to :lang

  has_one    :next,     class_name: "Sentence", inverse_of: :previous, foreign_key: "previous_id"
  belongs_to :previous, class_name: "Sentence", optional: true, inverse_of: :next
end
