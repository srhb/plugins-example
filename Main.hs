module Main where

import System.Plugins.Load

main = do
  mv <- load_ "Plugin.o" [] "value"
  case mv of 
    LoadFailure msg -> print msg
    LoadSuccess _ v -> print (v :: Int)
