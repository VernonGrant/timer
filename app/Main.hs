module Main where

import System.Environment;

{-
 TODO: Parse main arguments and provide some default commands and help.
 TODO: Parse related words such as 10 min, 1 hour, 1 day .. into a time int.
 TODO: Limit timer to a maximum of 99 hours, 99:99:99.
 TODO: Display time in terminal (Support, themes).
 TODO: Play noise when timer is done (POSIX, only).
-}

-- | Provide the user with help.
provideHelp :: IO ()
provideHelp = putStrLn "Help will be provided."

-- | Handles all incoming arguments.
parseArgs :: [String] -> IO ()
parseArgs [] = provideHelp
parseArgs (x:xs)
  | x == "--for" = putStrLn "A timer will be started."
  | otherwise = parseArgs []

-- | Application entry point.
main :: IO ()
main =
  do
    args <- getArgs
    parseArgs args

