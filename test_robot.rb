require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_needing_repairs_sent_to_station_1
    @robot1 = Robot.new
    @robot1.needs_repairs = true
    @robot1.foreign_model = true

    output = @robot1.station
    assert_equal 1, output

  end





  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    @robot2 = Robot.new
    @robot2.needs_repairs = true
    @robot2.vintage_model = true

    output = @robot2.station
    assert_equal 2, output
    # arrange

    # act

    # assert
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    @robot3 = Robot.new
    @robot3.needs_repairs = true

    output = @robot3.station

    assert_equal 3, output
    # arrange

    # act

    # assert
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    @robot4 = Robot.new

    output = @robot4.station

    assert_equal 4, output


    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    @robot5 = Robot.new
    @robot5.todos.empty?

    output = @robot5.prioritize_tasks

    assert_equal -1, output

    # act

    # assert
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    skip
    @robot6 = Robot.new
    @robot6.todos.max


    output = @robot6.hm

    assert_equal 10, ouput

  end

  def test_workday_on_day_off_returns_false
    @robot7 = Robot.new
    @robot7.day_off = false

    output = @robot7.workday?(friday)

    assert_equal false, ouput
    # arrange

    # act

    # assert
  end

  def test_workday_not_day_off_returns_true
    skip
    # arrange

    # act

    # assert
  end

end
