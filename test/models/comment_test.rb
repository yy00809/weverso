require 'test_helper'

class CommentTest < ActiveSupport::TestCase
    test "comment should save" do
      assert Comment.new(username: 'Fun night', content: 'xxxx')
    end
end
