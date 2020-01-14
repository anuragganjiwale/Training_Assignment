module ValidateIfInputIsNumber
  def is_number? number
    number.to_i.to_s == number
  end
end

class Person
  include ValidateIfInputIsNumber
  attr_accessor :name_of_person, :status_of_person, :identifier_number, :age_of_person

  def person
    puts "Inside class #{self.class}"
  end

  def details_of_Person
    puts 'Enter name of Person:'
    name_of_person = gets.chomp
    puts 'Enter the status of Person:'
    status_of_person = gets.chomp
    puts 'Enter ID No. of Person:'
    while true
      identifier_number = gets.chomp
      if is_number? identifier_number
        break
      else
       puts 'Re-enter ID Number' 
      end
    end
    puts 'Enter age of Employee:'
    while true 
      age_of_person = gets.chomp
      if is_number? age_of_person
        break
      else
        puts 'Re-enter Age'
      end
    end
    
    show_details
  end

  def show_details
    puts "Name of Person is : #{name_of_person}"
    puts "Status of Person is  : #{status_of_person}"
    puts "ID No. of #{status_of_person} is : #{identifier_number}"
    puts "Age of #{status_of_person} is : #{age_of_person}"
  end

  private

  def private_method
    puts 'In Private Method'
  end

  protected

  def protected_method
    puts 'In Protected Method'
  end
end


class Employee < Person
  def employee
    puts "Inside class #{self.class}"
  end

  def check_protected_method
    protected_method
  end
end

class Customer < Person
  def customer
    puts "Inside class #{self.class}"
  end
end


# Employee.new.private_method     # private methods are not accessed outside class
Customer.new.details_of_Person
Employee.new.check_protected_method   # protected methods are accessed in child class
