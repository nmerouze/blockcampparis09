require "rubygems"
gem "jruby-jars"
require "jruby-jars"

vaadin_path = File.dirname(__FILE__) + "/WEB-INF/lib/vaadin-6.1.5.jar"
jruby_core_path = File.dirname(__FILE__) + "/WEB-INF/lib/#{File.basename(JRubyJars.core_jar_path)}"
jruby_stdlib_path = File.dirname(__FILE__) + "/WEB-INF/lib/#{File.basename(JRubyJars.stdlib_jar_path)}"

unless File.exist?(vaadin_path)
  `curl -L http://vaadin.com/download/release/6.1/6.1.5/vaadin-6.1.5.jar > #{vaadin_path}`
end

unless File.exist?(jruby_core_path)
  FileUtils.cp(JRubyJars.core_jar_path, jruby_core_path)
end

unless File.exist?(jruby_stdlib_path)
  FileUtils.cp(JRubyJars.stdlib_jar_path, jruby_stdlib_path)
end

`javac -cp #{jruby_core_path}:#{jruby_stdlib_path}:WEB-INF/lib/vaadin-6.1.5.jar Runner.java`
`mv -f Runner.class WEB-INF/classes/`
`jar -cvf vaadin.war WEB-INF main.rb`
`jruby -S jetty-service -w vaadin.war -p 8080`

