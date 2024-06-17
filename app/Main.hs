module Main where

import System.Environment
import Data.List (intercalate)


{-
 TODO: Parse main arguments and provide some default commands and help.
 TODO: Parse related words such as 10 min, 1 hour, 1 day .. into a time int.
 TODO: Limit timer to a maximum of 99 hours, 99:99:99.
 TODO: Display time in terminal (Support, themes).
 TODO: Play noise when timer is done (POSIX, only).
-}

-- | Provide the user with help.
provideHelp :: IO ()
provideHelp = putStrLn (intercalate "\n" [
    " _____ _____ _               ",
    "|  |  |_   _|_|_____ ___ ___ ",
    "|     | | | | |     | -_|  _|",
    "|__|__| |_| |_|_|_|_|___|_|  ",
    "----------------------------------------------------------",
    "",
    "Options:",
    "    --for | Create a time for the time specified time string.",
    "    *     | Anything else will bring up this help screen.",
    "",
    "Usage Examples:",
    "    htimer --for 1 hour",
    "    htimer --for 1h",
    "    htimer --for 20 seconds",
    "    htimer --for 20s",
    "    htimer --for 30 minutes",
    "    htimer --for 30m",
    "    htimer --for 00:00:05"
    ])

-- | Handles all incoming arguments.
parseArgs :: [String] -> IO ()
parseArgs [] = provideHelp
parseArgs (x:xs)
    | x == "--for" = putStrLn "A timer will be started."
    | otherwise = parseArgs []

-- | Application entry point.
main :: IO ()
main = do
    args <- getArgs
    parseArgs args

