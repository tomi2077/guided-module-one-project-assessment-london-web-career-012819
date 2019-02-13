def welcome
  puts " "
  puts " "
  puts "Welcome to clinical research database management application that informs the study manager about the
  trials update."
  puts " "
  puts " "
  puts "******* C L I N I C A L   T R I A L S   M O N I T O R I N G   S Y S T E M *******"
  puts " "
  puts " "
end

def how_many_patients_on_study
  puts "Please answer 'yes' or 'y' to know the number of patients currently on the trials?"
  puts ">"
  input = gets.chomp
  if input == "yes" || "y"
    puts Patient.all.size
  else
  end
end

def number_of_reviews
  puts "Please answer 'yes' or 'y' to know the number of reviews?"
  puts ">"
  input = gets.chomp
  if input == "yes" || "y"
    puts Review.all.size
  else
  end
end

def most_common_medicine_on_study
  puts "Do you want to know the most popular medicine in the study, if so, enter 'yes' or 'y'?"
  puts ">"
  input = gets.chomp
  if input == "yes" || "y"
    medicine_count = Hash.new(0)
    Medicine.all.each do |med|
      medicine_count[med[:name]] += 1
    end
    puts medicine_count.max
  end
end
