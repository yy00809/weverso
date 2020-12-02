require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "events validation for title should trigger" do
    assert_not Event.new(title: 'FUN',description: 'xxx', guest_capacity: '9').save
  end

  test "events validation for missing description should trigger" do
    assert_not Event.new(title: 'FUN might', guest_capacity: '9').save
  end

  test "events validation for guest_capacity out of bounds should trigger" do
    assert_not Event.new(title: 'FUN might', description: 'xxx', guest_capacity: '30').save
  end

  test "event should save" do
    assert Event.new(title: 'Fun night', description: 'xxx', guest_capacity: '9').save
  end

end
