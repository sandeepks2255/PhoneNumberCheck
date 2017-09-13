require "minitest/autorun"

require "minitest/pride"

require "./call"



class TestMethodMissing < Minitest::Test

  def setup
    @calling_object = Call.new
    @method1 = @calling_object.call_8989898989
    @method2 = @calling_object.call_0484401184
    @method3 = @calling_object.call_9547810845
    @method4 = @calling_object.call_12321
    
  end

  def test_call_898989898989
    assert_equal :call_898989898989,@method1
    skip("Number is invalid")
  end



  def test_call_04844011845
    assert_equal :call_0484401184,@method2
    skip("Number is Valid")
  end



  def test_call_8547810845
    assert_equal :call_9547810845,@method3
    skip("Number is Valid")
  end



  def test_call_12321
    assert_equal :call_12321,@method4
    skip("Number is not valid")

  end

end