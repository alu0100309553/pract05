# encoding: utf-8
require './fraccionarios.rb'
require "test/unit"

class Test_Fraccionarios < Test::Unit::TestCase
   
   def setup
      @n1 = Fraccionarios.new(8,7)
      @n2 = Fraccionarios.new(4,3)
   end
   
   def test_suma
      assert_equal("52/21", @n1.sum(@n2).string)
   end                   
   
   def test_resta
      assert_equal("-4/21", @n1.res(@n2).string)
   end  
   
   def test_multi
      assert_equal("32/21", @n1.mul(@n2).string)
   end
   
   def test_divi
      assert_equal("24/28", @n1.div(@n2).string)
   end
   
end