## Overview

**Project Title**: Nim Programming Language Competency Demonstration Suite

**Project Description**: This project will show my competency in programming with the Nim language, demonstrating how to write and use the following:

- [x] Conditionals,
- [x] Case switches,
- [x] Loops,
- [x] Functions,
- [x] Classes, and
- [x] Data structure (sequence, comparable to the linked list)

**Project Goals**:
Make a "guess the number" game to get familiar with the tools of the language

I vastly exceeded the time requirement for this assignment--and learned a lot along the way--but couldn't get it all working together. The project got way too bloated with features I wanted to add (like a second sequence list that held numbers not yet guessed), leading to more bugs than I had time left to comprehend, research, and work out. Disappointingly, the project became very small by the end, although it does still meet the assignment criteria.

## Instructions for Build and Use

Steps to build and/or run the software:
(This assumes that you have VSCode already running on your system.)

1. Install the Nim framework on your OS
2. Install the Nim extension on VSCode
3. Compile the .nim code by running the following command in the terminal: `nim c helloworld.nim`
4. Run the executable in the terminal with `.\PROJECT_NAME.exe`
5. Alternatively, compile and run at the same time with `nim c -r helloworld.nim`

Instructions for using the software:

1. Select a difficulty number from the prompt.
2. Input a number within the range set by the difficulty.
   - (You can track what values you've guessed with the sequence report.)
3. Once the answer is guessed, the terminal will report how many guesses you made and the program will end.

## Development Environment

To recreate the development environment, you need the following software and/or libraries with the specified versions:

- VSCode
  - nim-lang.org Extension
- Nim Language Library

## Useful Websites to Learn More

I found these websites useful in developing this software:

- [✮ Nim by Example](https://nim-by-example.github.io/)
- [Official Nim Tutorial: Sequences](https://nim-lang.org/docs/tut1.html#advanced-types-sequences)
- [Nim Basics](https://narimiran.github.io/nim-basics/)
- [Quick Exposure to Nim](https://learnxinyminutes.com/nim/)

## Future Work

The following items I plan to fix, improve, and/or add to this project in the future:

- [ ] Report efficiency (number of guesses for game) using different algorithms
- [ ] Each algorithm is its own class
- [ ] Threading (so each report uses the same randomly generated number)

## Other Ideas from This Project

- [ ] Text editor
- [ ] RPG/fantasy item generator
- [ ] Text adventure
