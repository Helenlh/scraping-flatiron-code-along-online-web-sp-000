require 'pry'

require 'nokogiri'
require 'open-uri'


require_relative './course.rb'

class Scraper 
  
  def get_page
    #html = open('http://learn-co-curriculum.github.io/site-for-scraping/courses') 
    #this holds the html code in this variable called html
     doc = Nokogiri::HTML(open('http://learn-co-curriculum.github.io/site-for-scraping/courses'))
    end 
  
  
  def get_courses 
    courses_offerings = get_page.css(".post")
  end 
  
<<<<<<< HEAD
  def make_courses 
=======
  def 
    binding.pry 
>>>>>>> 6945964ace120210841d8bf790c31263a906a2d4
   get_courses.each do |post|
     course = Course.new
    course.title = post.css("h2").text
    course.schedule = post.css(".date").text
   course.description = post.css("p").text
  end
end

   
  def print_courses
    self.make_courses
    Course.all.each do |course| 
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
      Scraper.new.print_courses
      end 
end 
end 





