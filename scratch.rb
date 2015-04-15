require 'date'                 # => true
num_to_pair = [3, 7, 7, 1, 9]  # => [3, 7, 7, 1, 9]

# rotator will create the rotation values by using
# returned value from generate_key-method
# and add that with last four of squared date
# for total rotation value for a,b,c,d

total_rotation_value_a = num_to_pair.slice(0..1).join.to_i  # => 37

total_rotation_value_b = num_to_pair.slice(1..2).join  # => "77"

total_rotation_value_c = num_to_pair.slice(2..3).join  # => "71"

total_rotation_value_d = num_to_pair.slice(3..4).join  # => "19"

message = "hello world"  # => "hello world"

message.chars.each_slice(4) do |chunk|                    # => ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
  chunk.map.with_index do |char, index|                   # => #<Enumerator: ["h", "e", "l", "l"]:map>
  rotator.character_map[char] + rotator.rotations[index]  # ~> NameError: undefined local variable or method `rotator' for main:Object
end
end


Date.today

# ~> NameError
# ~> undefined local variable or method `rotator' for main:Object
# ~>
# ~> /Users/genekhanutin/module_1/enigma-1/scratch.rb:21:in `block (2 levels) in <main>'
# ~> /Users/genekhanutin/module_1/enigma-1/scratch.rb:20:in `map'
# ~> /Users/genekhanutin/module_1/enigma-1/scratch.rb:20:in `with_index'
# ~> /Users/genekhanutin/module_1/enigma-1/scratch.rb:20:in `block in <main>'
# ~> /Users/genekhanutin/module_1/enigma-1/scratch.rb:19:in `each'
# ~> /Users/genekhanutin/module_1/enigma-1/scratch.rb:19:in `each_slice'
# ~> /Users/genekhanutin/module_1/enigma-1/scratch.rb:19:in `<main>'