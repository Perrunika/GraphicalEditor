require 'Editor.rb'

e = Editor.new

while s = gets 
  args = s.split(' ')
    
  case args[0].upcase
  when "I"
    e.create_array args[1].to_i, args[2].to_i, 'O'
  when "C"
    e.clear_table 'O'
  when "L"
    e.color_pixel args[1].to_i, args[2].to_i, args[3]
  when "V"
    e.draw_vertical args[1].to_i, args[2].to_i, args[3].to_i, args[4]
  when "H"
    e.draw_horizontal args[1].to_i, args[2].to_i, args[3].to_i, args[4]
  when "F"
    e.draw_region args[1].to_i, args[2].to_i, args[3]
  when "S"
    e.show_content
  when "X"
    e.terminate_session
  else 
    puts "Please enter a valid command!" 
  end
end



