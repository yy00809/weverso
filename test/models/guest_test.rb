require 'test_helper'

class GuestTest < ActiveSupport::TestCase

    setup do
      @event = events(:one)
    end

    test "guests validation for missing fullname should trigger" do
      guest = Guest.new(email: '123456@gmail.com', phonenumber: '078123242')
      guest.event =@event

      guest.save
      assert_not guest.valid?
    end

    test "guests validation for missing email should trigger" do
      guest = Guest.new(fullname: 'Paul Yang', phonenumber: '078123242')
      guest.event =@event

      guest.save
      assert_not guest.valid?
    end

    test "guests validation for missing phoenenumber should trigger" do
      guest = Guest.new(fullname: 'Paul Yang', email: '123456@gmail.com')
      guest.event =@event

      guest.save
      assert_not guest.valid?
    end

    test "guests validation for text in phonenumber should trigger" do
      guest = Guest.new(fullname: 'Paul Yang', email: '123456@gmail.com', phonenumber: 'xxxxx')
      guest.event =@event

      guest.save
      assert_not guest.valid?
    end

    test "guests validation for wrong email format should trigger" do
      guest = Guest.new(fullname: 'Paul Yang', email: '123456gmail.com', phonenumber: '078123242')
      guest.event =@event

      guest.save
      assert_not guest.valid?
    end

    test "guests should save" do
      guest = Guest.new(fullname: 'Paul Yang', email: 'yy0080@gmail.com', phonenumber: '078123242')
      guest.event =@event

      guest.save
      assert guest.valid?
    end
end
