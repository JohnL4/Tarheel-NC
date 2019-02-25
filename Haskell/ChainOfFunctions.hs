module ChainOfFunctions where

f x y z = x + y + z

g x y = x * y

h x = 0 - x

main = do
  putStrLn ("h g 2 f 4 6 8 = " ++ show (h (g 2 (f 4 6 8))))
  
