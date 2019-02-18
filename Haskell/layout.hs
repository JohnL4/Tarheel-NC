-- -*- fill-column: 120 -*-
  
module Layout where

-- 'do' is one of those statements that expects curly braces containing a list of statements.  The only such statements
-- (or keywords) are:
--
--      do
--      where
--      let
--      of
--
-- And then, once you're in for a curly brace penny, you're in for semicolon pounds.  Meaning, every statement needs to
-- be separated with semicolons.
-- 
oneLine = do { putStr "Hello, " ; putStrLn "there!" }

-- But, you can put things on separate lines and indent them properly and get away w/out the braces and semicolons.
laidOut = do putStr "Hello, "
             putStrLn "there!"

-- A more common alternative
laidOut2 = do
  putStr "Hello, "
  putStrLn "there!"

laidOut3 = do
  putStr "Hello, "
  putStrLn "there!"
  putStrLn $ "function results: " ++ show (f 3)
  where
    f x = 2.5 * x

{-

-- You can do this, too, if you want, but it will bollix everything up that comes after it.
badLayout = do
putStr "Hello, "
putStrLn "there!"

-- But once you commit to an indentation, you can't back out of it.  Everything else in that block needs to be indented
-- the same.
illegalLayout = do
        putStr "Hello, "
  putStrLn ", there!"

-- Same problem here.
illegalLayout2 = do putStr "Hello, "
putStrLn "there!"
-}
