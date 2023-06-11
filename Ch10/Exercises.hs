module Exercises where

{-|
Exercise: Implement the Sieve of Eratosthenes. the result should be an infinite
list. If you don't know how it works, take a look at the Wikipedia article:
https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
|-}

primes :: [Int]
primes = _

{-|
Exercise: Using your list of primes, implement prime factorization (i.e. break
any number up into its prime factors).
|-}

pFactors :: Int -> [Int]
pFactors = _

{-|
Exercise: Algorithmically find the next best move (the one to lead to a win
using as few moves as possible or to a loss with as many moves as possible) in a
Tic Tac Toe game. Make use of the definitions below.
This may be of help: https://en.wikipedia.org/wiki/Minimax
|-}

data Side = Cross | Circle

type Field = Maybe Side

data Board = Board
  { a :: Field, b :: Field, c :: Field
  , d :: Field, e :: Field, f :: Field
  , g :: Field, h :: Field, i :: Field }


winState :: Board -> Maybe Side
winState = _

nextMove
  :: Board
  -> Side -- which side is currently playing
  -> Board
nextMove = _
