require 'byebug'
# def coffee
#   puts self
# end

# coffee


# class Cat
#   def meow
#     puts self
#   end
# end
# Cat.new.meow


# class Example
#   def do_something
#     banana = "variable"
#     puts banana
#     puts self.banana
#   end
#   def banana
#     "method"
#   end
# end
# Example.new.do_something

# class Salad
#   def initialize
#     @ingredients = []
#   end
#   def add_nuts
#     @ingredients << :nuts
#     p self
#   end
# end
# my_salad = Salad.new.add_nuts

# # p [1,2,3,nil,4].select(&:itself)

# arr = [0,1,2,3,4,5]
# p arr.drop(2)
# p arr.take(2)


# b = 2
# loop do
#   puts "This will keep printing until you hit Ctrl + c"
#   b += 1
#   p b
#   break if b == 100
# end


#practicing diff between private public and protected methods
# class Flying
#     attr_reader :name
#     def initialize(name)
#         @name = name
#     end
    
#     def fly
#         puts "it's a bird, no it's a plane, no it's #{name}"
#     end

#     protected
#     def land 
#         puts "#{name} is coming in hot"
#     end

# end


# class Dog < Flying
#     def initialize(name)
#         super
#     end

#     def bark
#         puts "ruff!! Ruff!!!"
#         land
#     end
# end

# rock = Fly.new("Eleanor")
# rock.fly
# rock.land

# d = Dog.new("Jerry")
# d.land

# def explode(arr)
#   total = arr.sum
#   new_arr = []
#   (1..total).each do |i|
#     new_arr << arr
#   end
#   p new_arr
# end;
def explode arr
  if arr.first.is_a?String
    total = arr.last
  elsif arr.last.is_a?String
    total = arr.first
  else
    total = arr.sum
  end
  p total
  new_arr = []
  (1..total).each do |i|
    new_arr << arr
  end
  p new_arr
end

# explode([9, "f"])
# # p "46".is_a? String
i = "Sudo Placements"
for a in 1..5 do     
 puts a  
end


class PostMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
      en.post_mailer.post_created.subject
  #
  def post_created
    @greeting = "Hi"
    mail
      to: User.first.email,
      cc: User.all.pluck(:email),
      bcc: "secret@corsego.com",
      subject: "New post created"
  end
end

function towerBuilder(nFloors) {
  var space = "";
  var star = "";
  var result = [];
  for (var i = 1; i <= nFloors; i++) {
    space = (" ").repeat(nFloors - i);
    star = ("*").repeat((2 * i) - 1);
    result.push(space + star + space);
  }
  return result;
}