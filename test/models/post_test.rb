require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "formats author" do
    p = Post.create(author: "john locke", body: "Hello!")
    assert_equal "John Locke", p.author
  end
end
