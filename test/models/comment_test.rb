require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @comment = Comment.new(title: "Example Title", body: "Post description", user_id: 1, post_id: 1)
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "title should be present" do
    @comment.title = "     "
    assert_not @comment.valid?
  end

  test "body should be present" do
    @comment.body = "     "
    assert_not @comment.valid?
  end

  test "user_id should be present" do
    @comment.user_id = nil
    assert_not @comment.valid?
  end

  test "post_id should be present" do
    @comment.post_id = nil
    assert_not @comment.valid?
  end
end
