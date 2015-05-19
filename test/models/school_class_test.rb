require 'test_helper'

class SchoolClassTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @schoolclass = @user.school_classes.build(name: "Lorem ipsum")
  end

  test "should be valid" do
    assert @schoolclass.valid?
  end

  test "user id should be present" do
    @schoolclass.user_id = nil
    assert_not @schoolclass.valid?
  end
  
  test "name should be present" do
    @schoolclass.name = "   "
    assert_not @schoolclass.valid?
  end

  test "name should be at most 21 characters" do
    @schoolclass.name = "a" * 21
    assert_not @schoolclass.valid?
  end
  
  test "order should be most recent first" do
    assert_equal school_classes(:most_recent), SchoolClass.first
  end
  
  test "teacher should be present" do
    @schoolclass.teacher = "    "
    assert_not @schoolclass.valid?
  end
  
  test "teacher should be at most 31 characters" do
    @schoolclass.teacher = "a" * 31
    assert_not @schoolclass.valid?
  end
end
