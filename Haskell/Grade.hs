module Grade where

data Grade = F | D | C | B | A
  deriving (Ord, Eq, Show)

isPassing grd = grd > F
