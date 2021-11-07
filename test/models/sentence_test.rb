require "test_helper"

class SentenceTest < ActiveSupport::TestCase
  test "not self referential" do
    assert pt1.previous != pt1
  end
end
