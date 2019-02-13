def welcome
  puts " "
  puts " "
  puts "Welcome, study manager to the clinical research management platform. You can get the required trials update"
  puts "including patient\'s information, reviews and medicine  details on this platform."
  puts " "
  puts " "
  puts "          **********************************************************************************"
  puts "          ******* C L I N I C A L   T R I A L S   M O N I T O R I N G   S Y S T E M ********"
  puts "          **********************************************************************************"
  puts " "
  puts " "
end

def how_many_patients_on_study
  puts " "
  puts "§"*20
  puts "Please answer 'yes' or 'y' to know the number of patients currently on the trials?"
  puts ">"
  input = gets.chomp
  if input == "yes" || input == "y"
    puts Patient.all.size
    puts "-"* 10
  else
  end
end

def number_of_reviews
  puts "Please answer 'yes' or 'y' to know the number of reviews?"
  puts ">"
  input = gets.chomp
  if input == "yes" || input == "y"
    puts Review.all.size
    puts "-"* 10
  else
  end
end

def most_common_medicine_on_study
  puts "Do you want to know the most popular medicine in the study, if so, enter 'yes' or 'y'?"
  puts ">"
  input = gets.chomp
  if input == "yes" || input == "y"
    medicine_count = Hash.new(0)
    Medicine.all.each do |med|
      medicine_count[med[:name]] += 1
    end
    puts medicine_count.max
    puts "-"* 10
  end
end

def print_reviews
  puts "Print reviews? 'yes' or 'no'"
  puts ">"
  input = gets.chomp
  if input == "yes" || input == "y"
    Review.all[0...5].each {|a,b,c| puts a.review_message}
    puts "-"* 10
  end
end
