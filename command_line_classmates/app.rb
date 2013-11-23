require 'launchy'
require './lib/scraper'
require './lib/student'

class App
  attr_reader :names, :twitters, :blogs

  def initialize
    my_scraper = Scraper.new "http://flatironschool-bk.herokuapp.com/"
    @names = my_scraper.get_students_names
    @twitters = my_scraper.get_twitter
    @blogs = my_scraper.get_blog
  end

  def generate_directory
    our_class = []
    28.times do |i|
      our_class << Student.new(names[i], twitters[i], blogs[i])
    end
    our_class
  end

  def directory
    generate_directory.each do |classmate|
      puts "Name: #{classmate.name},  Twitter: #{classmate.twitter}, Blog: #{classmate.blog}\n"
    end
  end

  def random_blog
    Launchy.open("#{blogs.sample}")
  end

  def random_twitter
    Launchy.open("twitter.com/#{twitters.sample[1..-1]}")
  end

  def blog(stu_name)
    generate_directory.each do |student_object|
      if student_object.name.upcase.start_with?(stu_name.upcase)
        if student_object.blog == "none"; puts "none"
        else; Launchy.open("#{student_object.blog}"); end
      end
    end
  end

  def twitter(stu_name)
    generate_directory.each do |student_object|
      if student_object.name.upcase.start_with?(stu_name.upcase)
        if student_object.twitter == "none"; puts "none"
        else; Launchy.open("twitter.com/#{student_object.twitter[1..-1]}"); end
      end
    end
  end

  def play
    puts "Hey, what do you want?"
    ans = gets.chomp
    while (%w(rand_b rant_t blog twitter q h).include? ans) == false
      puts "Type h for help."
      ans = gets.chomp
    end
    if ans == "rand_b"
      random_blog
    elsif ans == "rand_t"
      random_twitter
    elsif ans == "blog"
      puts "Whose?"
      name = gets.chomp
      blog(name)
    elsif ans == "twitter"
      puts "Whose?"
      name = gets.chomp
      twitter(name)
    elsif ans == "h"
      puts "--------------------------------------------------------------"
      puts "Commands:"
      puts "rand_b  for random blog."
      puts "rand_t  for random twitter."
      puts "blog    for specific blog (you will be prompted for name)."
      puts "twitter for specific twitter (you will be prompted for name)."
      puts "q       for quit."
      puts "--------------------------------------------------------------"
    end
    ans
  end

end


# game code
app1 = App.new
want = true
while want
  last_input = app1.play
  want = false if last_input == "q"
end





