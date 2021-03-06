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
class Flying
    attr_reader :name
    def initialize(name)
        @name = name
    end
    
    def fly
        puts "it's a bird, no it's a plane, no it's #{name}"
    end

    protected
    def land 
        puts "#{name} is coming in hot"
    end

end


class Dog < Flying
    def initialize(name)
        super
    end

    def bark
        puts "ruff!! Ruff!!!"
        land
    end
end

# rock = Fly.new("Eleanor")
# rock.fly
# rock.land

d = Dog.new("Jerry")
d.land