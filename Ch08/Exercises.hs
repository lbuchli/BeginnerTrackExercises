-- Chapter 08: Making Our Own Types and Typeclasses
module Exercises where

{-|
Exercise: Peano defined natural numbers by means of 0 and successors of it.
Define a data type that represents this idea using a constructor for zero and
one for the successor of a number.
|-}

data Nat = _

{-|
Exercise: Define 'plus', which acts recursively on two natural numbers and
returns their sum.
|-}

plus :: Nat -> Nat -> Nat
plus = _


{-|
Exercise: Define an Eq instance for your Peano numbers.
|-}

instance Eq Nat where
  _

{-|
Exercise: Define a class that allows casting to and from Int. Your functions
should also make it possible to mark a cast as impossible (for example when
casting a negative integer to a natural number). Make an instance for your
natural number type.
|-}

class _ where
  _

instance _ Nat where
  _
