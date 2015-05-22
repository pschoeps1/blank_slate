require 'test_helper'

class GroupTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @group = @user.groups.build(name: "Lorem ipsum", teacher: "lorem ipsum")
  end

  test "should be valid" do
    assert @group.valid?
  end

  test "user id should be present" do
    @group.user_id = nil
    assert_not @group.valid?
  end
  
  test "name should be present" do
    @group.name = "   "
    assert_not @group.valid?
  end

  test "name should be at most 21 characters" do
    @group.name = "a" * 21
    assert_not @group.valid?
  end
  
  test "order should be most recent first" do
    assert_equal groups(:most_recent), Group.first
  end
  
  test "teacher should be present" do
    @group.teacher = "   "
    assert_not @group.valid?
  end
  
  test "teacher should be at most 31 characters" do
    @group.teacher = "a" * 31
    assert_not @group.valid?
  end
end
