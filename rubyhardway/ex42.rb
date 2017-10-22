# Animal is-a object look at the extra credit
class Animal
end

## Is-a Animal
class Dog <  Animal
  def initialize(name)
    ## Has-a name
    @name = name
  end
end

## Is-a Animal
class Cat < Animal
  def initialize(name)
    ## Has a name
    @name = name
  end
end

## Is-a Class
class Person
  def initialize(name)
    # Has-a name
    @name = name

    #Has-a pet
    @pet = nil
  end

  attr_reader :pet
end

## Is-a Person
class Employee < Person
  def initialize(name, salary)
    super(name)
    
    # Has-a salary
    @salary = salary
  end
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan Is-a Dog
satan = Don.new("Satan")

## mary Is-a Person
mary = Person.new("Mary")

## mary Has-a pet
mary.pet = satan

## frank Is-a Employee
frank = Employee.new("Frank", 120000)

## frank Has-a pet
frank.pet = rover

## flipper Is-a Fish
flipper = Fish.new

## crouse Is-a Salmon
crouse = Salmon.new

## harry Is-a Halibut
harry = Halibut.new

