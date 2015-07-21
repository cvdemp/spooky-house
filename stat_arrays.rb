#populate character_stats with these arrays
#should they be constants? Another table?

if character.birthday.month 1 >= && <= 3
    SPEED_ARRAY_1
  elsif character.birthday.month 4 >= && <= 6
    SPEED_ARRAY_2
  elsif character.birthday.month 7 >= && <= 9
    SPEED_ARRAY_3
  else
    SPEED_ARRAY_4
end

if character.birthday.day 1 >= && <= 7
    SANITY_ARRAY_1
  elsif character.birthday.month 8 >= && <= 15
    SANITY_ARRAY_2
  elsif character.birthday.month 16 >= && <= 23
    SANITY_ARRAY_3
  else
    SANITY_ARRAY_4
end

SPEED_ARRAY_1 = [ 0, 2, 3, 3, 4, 5, 6, 7, 7]
SPEED_ARRAY_2 = [ 0, 3, 4, 4, 4, 5, 6, 7, 8]
SPEED_ARRAY_3 = [ 0, 3, 3, 4, 5, 6, 6, 7, 8]
SPEED_ARRAY_4 = [ 0, 4, 4, 4, 5, 6, 7, 7, 8]

SANITY_ARRAY_1 = [ 0, 2, 3, 3, 4, 5, 6, 7, 7]
SANITY_ARRAY_2 = [ 0, 3, 4, 4, 4, 5, 6, 7, 8]
SANITY_ARRAY_3 = [ 0, 3, 4, 5, 5, 6, 6, 7, 8]
SANITY_ARRAY_4 = [ 0, 4, 4, 4, 5, 6, 7, 7, 8]
