require "rubygems"
gem "snarl"
require "snarl"

context = Snarl::JavascriptContext.new
context.eval("1+1") # => 2

context.eval("var increment = function(i){ return i+1 };")
puts context.eval("increment(3)") # => 4

context.put("foo", "bar")
puts context.get("foo") # => "bar"