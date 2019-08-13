require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  def setup 
    @link = Link.new( title: "This awesome Post!", 
                      body: "This is the body of the awesome post. Lorem!" )
  end

  test "should be valid" do 
    assert @link.valid?
  end

  test "title should be present" do 
    @link.title = "  "
    assert_not @link.valid?
  end

  test "body should be present" do 
    @link.body = "             "
    assert_not @link.valid?
  end

  test "title should not be too short" do 
    @link.title = "a"
    assert_not @link.valid?
  end
end
