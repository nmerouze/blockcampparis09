require "java"

frame = javax.swing.JFrame.new("Window")
label = javax.swing.JLabel.new("Hello")

frame.getContentPane.add(label)
frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
frame.pack
frame.setVisible(true)