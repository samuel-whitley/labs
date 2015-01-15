require 'pry'

module Stats
  def alive
    self.health > 0
  end
  
  def dead
    !self.alive 
  end

end


class Char
attr_reader :name
attr_accessor :health, :level

include Stats

  def initialize(name,level)
  @name = name
  @level = level
  @health = level + 1
  end

  def to_s
  @name
  end

  def damage
  @level + rand(1..5)
  end

end

binding.pry
class TownsPerson < Char
  attr_reader :name
  attr_accessor :health, :level

include Stats
  
  def initialize(name,level)
    @name = name
    #@level = level * .5
    #@health = level 
  end

end
   

class Slayer < Char
 attr_reader :name
 attr_accessor :health, :level

  def initialize(name,weapon,level)
  @name = name
  @level = level
  @damage = level * 5
  @weapon = weapon 
  @health = (level + 5) / 2 
  end


 def attack(other)
   damage = self.damage
   other.health -= damage
   if damage < 5
    puts "#{self} hit #{other} "
   else
    puts "#{self} Beat the crap out of #{other}"
   end
 end

   def slay(other)
   slayed = level *2
  end

    def to_s
    @name 
   end

end


class Healer < Char
 attr_reader :name
 attr_accessor :health, :level

 def initialize(name,level)
 @level = level
 @health = level + 3
 end 

  def heal(other)

  end  
  

  def to_s
  @name 
  end

end


class Wolf < Char
 attr_reader :name
 attr_accessor :health, :level

 def initialize(name,level)
 end  

  def bite
  end

    def pack
    end

end
binding.pry