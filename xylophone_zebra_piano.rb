class MindfulBreathing
  def initialize
    @ticks = 0
  end
  
  def next_tick
    @ticks += 1
  end
  
  def start_breathing
    print_instructions
    loop do 
      puts "Breathe in..."
      next_tick
      puts "Hold your breath..."
      next_tick
      puts "Breathe out..."
      next_tick
      puts "Hold your breath..."
      next_tick
    end
  end
  
  def print_instructions
    puts "Let's take a moment to start the mindful breathing exercise."
    puts "Breathe in for a count of 3, hold your breath for a count of 3, then breathe out for a count of 3."
    puts "Let's begin!"
  end
end

breathing_exercise = MindfulBreathing.new
breathing_exercise.start_breathing