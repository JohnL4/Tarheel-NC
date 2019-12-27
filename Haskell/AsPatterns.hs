module AsPatterns where

listFunkiness :: [a] -> [a]
listFunkiness allXs @ (_:xs)    = xs ++ allXs
listFunkiness []                = []
