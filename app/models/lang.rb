class Lang < ApplicationRecord
  has_many :sentences, class_name: "Sentence", inverse_of: :lang
end
