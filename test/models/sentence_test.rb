require "test_helper"

class SentenceTest < ActiveSupport::TestCase
  test "sentences pt1.next == pt2" do
    pt1 = sentences(:pt1)
    pt2 = sentences(:pt2)
    assert pt1.previous != pt1
    assert pt2.previous == pt1
    assert pt1.next == pt2
  end
  test "sentences en1.next == en2" do
    en1 = sentences(:en1)
    en2 = sentences(:en2)
    assert en1.previous != en1
    assert en2.previous == en1
    assert en1.next == en2
  end
end
