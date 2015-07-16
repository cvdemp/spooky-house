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
