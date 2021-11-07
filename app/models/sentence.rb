class Sentence < ApplicationRecord
  belongs_to :next
  belongs_to :lang
end
