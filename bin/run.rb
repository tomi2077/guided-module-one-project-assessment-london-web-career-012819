require_relative '../config/environment'
require_relative "../lib/command_line_interface.rb"

system "clear"

while true
  welcome
  #how_many_patients_on_study
  most_common_medicine_on_study
end
