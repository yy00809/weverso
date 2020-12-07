require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  setup do
    @event = events(:one)
  end

  test "comment should save" do
    @comment = Comment.new(username: 'Fun night', content: 'xxxx')
    @comment.event = @event
    
    @comment.save
    assert @comment.valid?
  end
end
