require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @post = Post.new(title: "Example Title", description: "Post description", link: "www.example.com/photo1")
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "title should be present" do
    @post.title = "     "
    assert_not @post.valid?
  end

  test "description should be present" do
    @post.description = "     "
    assert_not @post.valid?
  end

  test "link should be present" do
    @post.link = "     "
    assert_not @post.valid?
  end

end
