class Robot

attr_reader  :instruction_count

  def initialize
    @name = generate_name
    @instruction_count = 5
    @created_at = Time.now
  end

  def generate_name
    @instruction_count = 0
    "#{prefix}#{suffix}"
  end
  
  def timers
    increment_instruction
    '#{'
  end
   
  def name
    @instruction_count += 1
    #"hi"= ('aa'..'za').to_a.sample
    @name
  end


  def reset
    @name = generate_name
    #increment_instruction
  end

  private

  def seconds_since_creation
    (Time.now - @created_at)
  end

  def increment_instruction
    @instruction_count +=1
  end

  def prefix
    return ('AA'..'ZZ').to_a.sample
  end

  def suffix
    return ('000'...'999').to_a.sample
  end

end

require 'pry'




#r1 = Robot.new

#r1.name

#r1.reset

#r1.send(:name)
#r1.send(:reset)

#r2=Robot.new
#r2.name

#('a..z').to_a_sample
#('a..z').to_a_sample(2)


