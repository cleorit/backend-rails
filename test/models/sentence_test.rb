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

  test "sentences children == sentence2" do

    pt = langs(:pt_BR)
    en = langs(:en_US)

    sentence1 = pt.sentences.create(text: "a")

    translation1 = sentence1.children.create(text:"e1", lang: en)
    translation2 = sentence1.children.create(text:"e2", lang: en)

    assert translation1.parent == sentence1
    assert translation2.parent == sentence1
  end
end
