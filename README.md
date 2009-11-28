# JRuby in BlockCampParis '09

The purpose of this presentation is not meant to be very technical but to show how to use JRuby in different contexts (desktop, scripting, web...). You can find the slides here: [http://nmerouze.github.com/blockcampparis09](http://nmerouze.github.com/blockcampparis09)

# Required gems

<pre><code>jruby -S gem install warbler jetty snarl ruby-processing limelight duby celerity</code></pre>

# Run examples

## Simple

<pre><code>jruby simple.rb</code></pre>

## Processing

<pre><code>rp5 run processing.rb</code></pre>

## Swing

<pre><code>jruby swing.rb</code></pre>

## Limelight

<pre><code>jruby -S limelight open limelight</code></pre>

## Qt

Just download qtjambi-4.4.3_01.jar and the jar for your OS:

<code><pre>cd qt
curl -L http://qtjruby.googlecode.com/files/qtjambi-4.4.3_01.jar > qtjambi-4.4.3_01.jar
curl -L http://qtjruby.googlecode.com/files/qtjambi-macosx-gcc-4.4.3_01.jar > qtjambi-macosx-gcc-4.4.3_01.jar
curl -L http://qtjruby.googlecode.com/files/qtjambi-linux32-gcc-4.4.3_01.jar > qtjambi-linux32-gcc-4.4.3_01.jar
curl -L http://qtjruby.googlecode.com/files/qtjambi-win32-msvc2005-4.4.3_01.jar > qtjambi-win32-msvc2005-4.4.3_01.jar</pre></code>

<code><pre>jruby main.rb</pre></code>
  
Or for Mac OS X

<code><pre>jruby -J-d32 -J-XstartOnFirstThread main.rb</pre></code>

*NOTE*: Work with QtJambi 4.5 too.

## Celerity

<pre><code>jruby celerity.rb</code></pre>

## Rack

<pre><code>jruby -S rails rack
cd rack
jruby -S warble
jruby -S jetty-service -w rack.war -p 8080</code></pre>

## Vaadin

<pre><code>cd vaadin
jruby launch.rb</code></pre>

## Snarl

<pre><code>jruby snarl.rb</code></pre>

## Duby

<pre><code>cd duby
jruby -S duby simple.duby
jruby -S dubyc -java simple.duby</code></pre>