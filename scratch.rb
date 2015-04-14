
num_to_pair = [3, 7, 7, 1, 9]  # => [3, 7, 7, 1, 9]

# rotator will create the rotation values by using
# returned value from generate_key-method
# and add that with last four of squared date
# for total rotation value for a,b,c,d
rotation_value_a = num_to_pair.slice(0..1).join + last_four_numbers_of_squared_date  # => "37"

rotation_value_b = num_to_pair.slice(1..2).join  # => "77"

rotation_value_c = num_to_pair.slice(2..3).join  # => "71"

rotation_value_d = num_to_pair.slice(3..4).join  # => "19"





