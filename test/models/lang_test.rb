require "test_helper"

class LangTest < ActiveSupport::TestCase
  test "cannot create empty language" do
    lang = Lang.new
    assert_raise { lang.save }
  end

end
