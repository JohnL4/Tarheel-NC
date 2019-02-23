module Direction where
  
data Direction = North | East | South | West
  deriving (Eq)

bearing dir 
  | dir == North  = 0
  | dir == East   = 90
  | dir == South  = 180
  | dir == West   = 270
