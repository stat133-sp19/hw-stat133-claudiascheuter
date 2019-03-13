**DATA DICTIONARY**\


VARIABLE DESCRIPTION\
**Variable Name**: Explanation / Data Type / Measurement Units / Missing Values / Typical Range of Value

**team_name**: Name of the team to which the player belongs / character / not applicable / NA / one of the 30 NBA teams

**game_date**: date of the game / date / date / not applicable / 3/24/17

**season**: NBA game season / integer / years / NA / 2016

**period**: a game is divided into 4 periods, each lasting 12 minutes / double / minutes / NA / 0 - 59 

**minutes_remaining**: minutes that remain to be played in the current period / double / minutes / NA / 0 - 12

**seconds_remaining**: seconds that remain to be played in the current period / double  / seconds / NA / 0 - 59

**shot_made_flag**: indicates whether a shot was made (y) or missed (n) / character / binary variable / NA /  yes-no

**action_type**: name of the move made by the player / character / not applicable / NA / Jump Shot, Alley Oop, etc.

**shot_type**: indicates whether shot is a 2-point or 3-point field goal / integer / real number / NA / 2PT Field Goal or 3PT Field goal

**shot_distance**: distance to the basket / double / feet / NA / 0 - 28

**opponent**: opposing team of the game / character/ not applicable / NA / one of the 30 NBA teams

**x**: basketball court coordinates indicating the location from which the shot occured / double / inches / NA / -230 to 249 

**y**: basketball court coordinates indicating the location from which the shot occured / double / inches / NA / -230 to 249 

