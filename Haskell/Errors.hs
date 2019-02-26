module Errors where

class ErrorInfoClass a where
  getMessage :: a -> String
  getLocations :: a -> [String]

data ErrorInfo = ErrorInfo { message :: String, locations :: [String] }
instance ErrorInfoClass ErrorInfo where
  getMessage e = message e
  getLocations e = locations e

-- class ErrorInfoClass a where
--   message :: a -> String
--   locations :: a -> [String]

data AnswerOrError a e = Answer a | Error e

-- safeDiv :: (Num a, ErrorInfoClass e) => AnswerOrError a e -> AnswerOrError a e -> AnswerOrError a e
safeDiv (Error e) _ = Error (ErrorInfo { message = getMessage e, locations = "safeDiv" : getLocations e })
safeDiv _ (Error e) = Error (ErrorInfo { message = getMessage e, locations = "safeDiv" : getLocations e })
safeDiv (Answer x) (Answer y)
  | y == 0     = Error (ErrorInfo { message = "division by zero", locations = ["safeDiv"] })
  | otherwise  = Answer (x/y)

f :: (Num a) => a -> a
f x = -x
