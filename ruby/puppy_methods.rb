# Ask about why it needs self or .new
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
    i.times do 
        puts "Woof!"
    end
  end
  
  def rollover
    puts "*rolls over*"
  end
  def dog_years(i)
    years = i*7
    p years
  end

  def shake
    puts "Give me your paw"
  end

  def initialize
    puts "Initialize new puppy instance..."
  end  
end
fido = Puppy.new

class Basketball
  def shoot
      puts "Shoot the ball"
  end 
  def initialize
      puts "walk on the court"
  end
  
  def defense
      puts "positioning on defense is the key"
  end           
end

spartans = Basketball.new
array = []
x = 0
  while x <= 50
    array.push(spartans)  
  x += 1
  end
array.each do |instance|  
  instance.shoot
  instance.defense
end  
#DRIVER CODE
array
# fido.fetch("toy")
# fido.speak(3)  # Why does prefixing p include 3?
# fido.rollover
# fido.dog_years(4)
# fido.shake
# spartans.shoot
# spartans.defense

