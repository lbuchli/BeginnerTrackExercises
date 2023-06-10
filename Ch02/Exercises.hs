-- Chapter 02: Starting Out
module Exercises where


{-|
Use '-- >>>' comments in your file to execute expressions on the go. There
should appear an 'evaluate' button next to the expression which allows you to
evaluate it. If it isn't there, you can also use GHCi to evaluate expressions.(*)

Exercise: Try expressions from the chapter or what you can come up with here.
|-}

-- >>> 2 + 15
-- 17

{-|
Exercise: Here are the definitions of this book chapter. Add a definition
'yourDef' that uses at least one of the definitions above. Try your definition
using the '-- >>>' comment below.
|-}

doubleMe x = x + x

doubleUs x y = x*2 + y*2

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

conanO'Brien = "It's a-me, Conan O'Brien!"

yourDef = doubleUs 2 3

-- >>> yourDef

{-|
Exercise: Create a list of all squares of even numbers from 2 to 100. Check your
definition using 'stack test Ch02'.
|-}

evenSquares = [x^2 | x <- [2..100], even x]
