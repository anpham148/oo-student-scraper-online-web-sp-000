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
    new_student =  students_array.each do |student|
        Student.new(student)
     end
  end

  def add_student_attributes(attributes_hash)
    # add_attributes = attributes_hash.each do |attr|
    #
    # end
    attributes_hash[:twitter] = twitter
    attributes_hash[:]
  end

  def self.all
    @@all
  end
end
