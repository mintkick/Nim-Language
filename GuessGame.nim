# Use F6 to run selected NIM file

####################
# Guess the Number #
####################

import random, strutils
# random provides functions to generate random values
# strutils provides functions to convert a string type to an int

randomize() # Initialize the default RNG with a seed based on the current time

# will use case switch to choose among these difficulties
const EASY = 25
const MEDIUM = 50
const HARD = 100

var correct = false # whether guess is correct; once true, game ends


################ Classes ################


type Search = ref object of RootObj # inherits from "the most" general class
    name: string


type Sequence = ref object of Search # inherits from a more general class
    used: seq[int]
proc report(self: Sequence) = echo "Previous guesses: ", self.used



################ FUNCTIONS ################

# (Functions must be in proper order: If funcA() uses funcB(), then funcB() must be defined first.)
# (Also, variables used in functions need to be declared before appearing in the function declaration.)

var answer: int
# var used: seq[int] # removed to instead illustrate more of the object
# var remaining: seq[int] # removed because too bloated and tricky

proc checkGuess(response: int, used: var seq[int]): bool =
    if response > answer:
        echo "Too high!"
        # remaining.delete(response)
        used.add(response)
    elif response < answer:
        echo "Too low!"
        used.add(response)
    else:
        echo "You got it!"
        # remaining.delete(response)
        used.add(response)
        echo "Number of guesses: ", used.len()
        return true
    return false

var max = 0
proc difficulty() =
    while max == 0:
        # choose a "difficulty"
        echo "Choose a difficulty"
        echo "1: Easy"
        echo "2: Medium"
        echo "3: Hard"
        var response = readLine(stdin)  # var response: string = readLine(stdin) -- also works
        case response:
            of "1":
                max = EASY
            of "2":
                max = MEDIUM
            of "3":
                max = HARD
            else:
                echo "Not a valid response. Choose 1-3."

proc prompt(seqPlayer: var Sequence): bool =
    echo "Guess a number between 1 and ", max, "."
    var response: int # declare
    # handle errors before passing the user's input value
    try: # try to store it...
        response = parseInt(readLine(stdin))
    except ValueError: # output and exit function with incorrect guess
        echo "Not a valid response."
        return false
    let temp = checkGuess(response, seqPlayer.used)
    # echo "Previous guesses: ", used
    seqPlayer.report()
    # echo "Unused numbers: ", remaining
    return temp



################ GAME ################


# initiate game
difficulty()
answer = rand(1..max) # generates a random number within the range 1 to max


# initiate the player object
var seqPlayer = new(Sequence)
seqPlayer.name = "Player Guesses"
seqPlayer.report() # should print empty


# one of these works...
# var remaining: seq[int]
# var used: seq[int]
# # var used = newSeq[int](1)
# remaining: seq[int] = @[1]
# used: seq[int] = @[1]
# ...this set does:
# used = @[]
# remaining = @[0]

# for i in 1..max: # initiate seq collection of remaining guesses
#     remaining.add(i)


# game loop
while correct != true:
    correct = prompt(seqPlayer)