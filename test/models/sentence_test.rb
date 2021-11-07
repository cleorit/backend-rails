require "test_helper"

class SentenceTest < ActiveSupport::TestCase
  test "sentences sentence1.next == sentence2" do

    pt = langs(:pt_BR)

    sentence1 = pt.sentences.create(text: "a")
    sentence2 = pt.sentences.create(text: "b")

    sentence1.next = sentence2
    assert sentence2.save
    assert sentence1.save

    assert sentence2.previous == sentence1
    assert sentence1.next == sentence2
  end
end
