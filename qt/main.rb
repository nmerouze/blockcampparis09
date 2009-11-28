require "java"
Dir[File.dirname(__FILE__) + "/qtjambi-*.jar"].each { |f| require f }

import "com.trolltech.qt.gui.QApplication"
import "com.trolltech.qt.gui.QPushButton"

QApplication.new(ARGV.to_java(:string))

hello = QPushButton.new 'Hello World!'
hello.show

QApplication.exec