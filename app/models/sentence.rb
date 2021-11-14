class Sentence < ApplicationRecord
  belongs_to :lang

  has_one    :next,     class_name: "Sentence", inverse_of: :previous, foreign_key: "previous_id"
  belongs_to :previous, class_name: "Sentence", optional: true, inverse_of: :next

  belongs_to :parent,   class_name: "Sentence", optional: true, inverse_of: :children
  has_many   :children, class_name: "Sentence", inverse_of: :parent, foreign_key: "parent_id"
end
