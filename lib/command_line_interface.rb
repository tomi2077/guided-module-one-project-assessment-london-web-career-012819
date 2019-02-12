def welcome
  puts " "
  puts " "
  puts "Welcome to Clinical Research database management application that informs the clinical esearch associate about the
  review/response of the patient to the medications that they are currently taking."
  puts " "
  puts " "
  puts "******* C L I N I C A L  T R I A L S M O N I T O R I N G  S Y S T E M *******"
  puts " "
  puts " "
end

#
# def how_many_patients_on_study
#   puts "Do you want to know how many patients are on the study?"
#   puts ">"
#   input = gets.chomp
#   if input == "yes" || "y"
#     Patient.all.count
#   else
#   end
# end

def most_common_medicine_on_study
  puts "Do you want to know the most popular medicine in the study?"
  puts ">"
  input = gets.chomp
  if input == "yes" || "y"
    Medicine["data"].each do |meds|
      meds["name"].max_by {|name| name.length}
    end
  end
end
