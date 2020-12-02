require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @comment = comments( :one)
      @event = events( :one)
    end

    test "should create comment" do
      assert_difference('Comment.count') do
        post event_comments_url(@event,@comment), params: { comment: { username: @comment.username,
          content: @comment.content}}
      end
      assert_redirected_to event_url(@event)
    end

    test "should destroy comment" do
      assert_difference('Comment.count',-1) do
        delete event_comment_url(@event,@comment)
      end

      assert_redirected_to event_url(@event)
    end

end
