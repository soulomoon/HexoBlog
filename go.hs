{-# LANGUAGE ImpredicativeTypes #-}

f :: Maybe (forall a. [a] -> [a]) -> Maybe ([Int], [Char])
f (Just g) = Just (g [3], g "hello")
f Nothing  = Nothing

ap2 :: (forall b. b -> b) -> Int -> Bool -> (Int, Bool)
ap2 f x y = (f x, f y)

main = do
  print $ ap2 id 3 True