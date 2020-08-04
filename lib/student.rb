require 'pry'
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    @name = student_hash[:name]
    @location = student_hash[:location]
    @@all << self

  end

  def self.create_from_collection(students_array)
    new_student = nil
    students_array.each do |student|
       new_student= Student.new(student)
     end
  new_student
  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
