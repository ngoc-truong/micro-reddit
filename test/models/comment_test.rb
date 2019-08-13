require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup 
    @comment = Comment.new(body: "Awesome posts, buddy!")
  end


  test "should be present" do 
    @comment.body = "    "
    assert_not @comment.valid?
  end
end
