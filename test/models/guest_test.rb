require 'test_helper'

class GuestTest < ActiveSupport::TestCase

    test "guests validation for missing fullname should trigger" do
      assert_not Guest.new(fullname: 'Paul Yang', email: '123456@gmail.com', phonenumber: '078123242').save
    end

    test "guests validation for missing email should trigger" do
      assert_not Guest.new(fullname: 'Paul Yang', phonenumber: '078123242').save
    end

    test "guests validation for missing phoenenumber should trigger" do
      assert_not Guest.new(fullname: 'Paul Yang', email: '123456@gmail.com').save
    end

    test "guests validation for text in phonenumber should trigger" do
      assert_not Guest.new(fullname: 'Paul Yang', email: '123456@gmail.com', phonenumber: 'xxxxx').save
    end

    test "guests validation for wrong email format should trigger" do
      assert_not Guest.new(fullname: 'Paul Yang', email: '123456gmail.com', phonenumber: '078123242').save
    end

    test "guests should save" do
      assert Guest.new(fullname: 'Paul Yang', email: 'yy0080@gmail.com', phonenumber: '078123242')
    end
end
