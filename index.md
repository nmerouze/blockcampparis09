!SLIDE

# JRuby, Duby, Surinx, Java...

!SLIDE

# Nicolas Mérouze
# [@nmerouze](http://twitter.com/nmerouze)
# [http://boldr.net](http://boldr.net)

!SLIDE code

@@@ ruby
we_like(:ruby).syntax
@@@

!SLIDE

# "Ruby is exotic, use Java!"
#### &nbsp; - Ignorant boss

!SLIDE

# JRuby

!SLIDE

# Use gems AND java libs

!SLIDE

# Mix Java and Ruby, it makes a good soup!

!SLIDE

@@@ ruby
require "java"
import java.lang.System
puts System.getProperties["java.runtime.version"]
@@@

!SLIDE

# [Gems in a jar](http://blog.nicksieger.com/articles/2009/01/10/jruby-1-1-6-gems-in-a-jar)

!SLIDE

# [Processing](http://wiki.github.com/jashkenas/ruby-processing)

!SLIDE

# Desktop applications: Swing, Qt, Limelight...

!SLIDE

# BDD with Celerity

!SLIDE

# We can use any Rack app with JRuby
# And Google AppEngine

!SLIDE

# Web applications with Vaadin

!SLIDE

# Mix Ruby with others languages than Java

!SLIDE

# Mix it with Javascript: Snarl

!SLIDE

# Mix it with Scala: Scuby

!SLIDE

# There's more

!SLIDE

# Sidekicks: Duby, Surinx, BiteScript

!SLIDE

# Duby is Java with Ruby syntax

!SLIDE code

@@@ ruby
def fib(a:int)
  if a < 2
    a
  else
    fib(a - 1) + fib(a - 2)
  end
end
@@@

!SLIDE

# .class and .java output

!SLIDE code

@@@ java
public class fib extends java.lang.Object {
  public static void main(java.lang.String[] argv) { }
  public static int fib(int a) {
    return (a < 2) ? a : (fib.fib((a - 1)) + fib.fib((a - 2)));
  }
}
@@@

!SLIDE

# Surinx: Like Duby but dynamic

!SLIDE

# Bitescript: DSL/API for emitting JVM bytecode

!SLIDE

# Thanks. Questions?

!SLIDE

# More details:
## [http://jruby.kenai.com/presentations](http://jruby.kenai.com/presentations)