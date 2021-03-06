module Compass where

data Direction = North | East | South | West deriving (Eq, Show)

bearing :: Direction -> Int
bearing dir = if dir == North
              then 0
              else if dir == East
                   then 90
                   else if dir == South
                        then 180
                        else 270

bearingCase :: Direction -> Int
bearingCase dir = case dir of
  North -> 0
  East  -> 90
  South -> 180
  West  -> 270

bearingPat :: Direction -> Int
bearingPat North  = 0
bearingPat East   = 90
bearingPat South  = 180
bearingPat West   = 270

bearingGd :: Direction -> Int
bearingGd dir
  | dir == North  = 0
  | dir == East   = 90
  | dir == South  = 180
  | dir == West   = 270

-- divAbyB :: (Eq t, Fractional t) => t -> t -> Maybe t
divAbyB x 0 = Nothing
divAbyB x y = Just (x/y)

sillyAdd Nothing _ = Nothing
sillyAdd _ Nothing = Nothing
sillyAdd (Just x) (Just y) = Just (x + y)

sillyAdd2 :: (Num a) => Maybe a -> Maybe a -> Maybe a
sillyAdd2 x y =
  case (x,y) of
    (Nothing, _)           -> Nothing
    (_, Nothing)           -> Nothing
    ((Just x), (Just y))   -> Just (x + y)

divWithError x 0 = Left "division by zero is undefined"
divWithError x y = Right (x/y)

sillyAdd3 (Left e) _ = Left (e ++ " (sillyAdd3)")
sillyAdd3 _ (Left e) = Left (e ++ " (sillyAdd3)")
sillyAdd3 (Right x) (Right y) = Right (x + y)
