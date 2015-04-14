
num_to_pair = [3, 7, 7, 1, 9]

# rotator will create the rotation values by using
# returned value from generate_key-method
# and add that with last four of squared date
# for total rotation value for a,b,c,d

total_rotation_value_a = num_to_pair.slice(0..1).join.to_i

total_rotation_value_b = num_to_pair.slice(1..2).join

total_rotation_value_c = num_to_pair.slice(2..3).join

total_rotation_value_d = num_to_pair.slice(3..4).join

message = "hello world"

message.chars.each_slice(4) do |chunk|
  chunk.map.with_index do |char, index|
  rotator.character_map[char] + rotator.rotations[index]
end
end


