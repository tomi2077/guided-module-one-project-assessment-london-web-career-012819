def welcome
  puts " "
  puts " "
  puts "Welcome, study manager to the clinical research management platform. You can find or update patient\'s name,"
  puts "add their drug review, and acquire more information on the study."
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
  puts "Please answer 'yes' or 'no' to know the number of patients & nurses currently on the trials?"
  puts ">"
  input = gets.chomp.downcase
  if input == "yes" || input == "y"
    puts "-"*22
    puts "Number of Patients: #{Patient.all.size}"
    puts "-"*22
    puts "Number of Nurses: #{Nurse.all.size}"
    puts "-"* 22
  else
  end
end

def number_of_reviews
  puts "Please answer 'yes' or 'y' to know the number of reviews that have been initiated?"
  puts ">"
  input = gets.chomp.downcase
  if input == "yes" || input == "y"
    puts Review.all.size
    puts "-"* 10
  elsif !(input == "yes" || input == "y")
  end
end

def find_or_create_patient
  puts "Please enter patient name: "
  puts ">"
  patient_name = gets.chomp.downcase
  Patient.find_or_create_by(name:patient_name)
end

def find_or_create_medicine
  puts "Please enter a medicine name: "
  puts ">"
  medicine_name = gets.chomp.downcase
  Medicine.find_or_create_by(name:medicine_name)
end

def add_review_to_patient
  puts "To create a new review for a patient, you'll need to specify the patient and medicine.Please answer yes or no?"
  puts ">"
  input = gets.chomp.downcase
  if input == "yes" || input == "y"
    puts "Please enter the review below: "
    puts ">"
    review_post = gets.chomp.downcase
    patient = find_or_create_patient
    medicine = find_or_create_medicine
    # @patient = find_or_create_patient
    Review.create(review_message: review_post, medicine:medicine, patient: patient)
  elsif !(input == "yes" || !input == "y")
  end
end

def most_common_medicine_on_study
  puts "Please answer 'yes' or 'no to know the most popular medicine on the study?"
  puts ">"
  input = gets.chomp.downcase
  if input == "yes" || input == "y"
    medicine_count = Hash.new(0)
    Medicine.all.each do |med|
      medicine_count[med[:name]] += 1
    end
    puts medicine_count.max
    puts "-"* 10
  elsif !(input == "yes" || input == "y")
  end
end

def print_reviews
  puts "Do you want to view the first 5 reviews or the whole review,"
  puts "Please enter '5' for 5 reviews and 'full' for full review."
  puts ">"
  input = gets.chomp.downcase
  if input == "5"
    Review.all[0...5].each {|a,b,c| puts a.review_message}
    puts "-"* 10
  elsif input == "full"
    Review.all.each {|a,b,c| puts a.review_message}
    puts "-"* 70
  else
  end
  time_now = Time.new
  puts "Thank you for keeping up to date with the trials for this week."
  puts "Time Logged: #{time_now.inspect}"
end


# def print_reviews
#   puts "Do you want to view the first 5 reviews or the whole review"
#   puts "Please enter 'yes' for 5 reviews and 'no' for full review."
#   puts ">"
#   input = gets.chomp
#   while true
#     if input == "yes" || input == "y"
#       Review.all[0...5].each {|a,b,c| puts a.review_message}
#       puts "-"* 10
#     elsif input == "no" || input == "n"
#       puts "Do you want to view the whole review"
#       Review.all.each {|a,b,c| puts a.review_message}
#       puts "-"* 10
#     else
#     end
# end
#**************************************************************************************

# def print_reviews
#   puts "Print reviews? 'yes' or 'no'"
#   puts ">"
#   input = gets.chomp
#   if input == "yes" || input == "y"
#     puts "Do you want to view the first 5 reviews or the whole review"
#     if input ==n "yes" || input = "y"
#       Review.all[0...5].each {|a,b,c| puts a.review_message}
#     puts "-"* 10
#   elsif
#   end
# end
