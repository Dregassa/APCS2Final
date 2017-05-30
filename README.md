# APCS2Final
### Team Peg
Brandon Zhang and Daniel Regassa

## Project :: Sudoku

User will be presented with three different difficulties at the title screen. The difficulty will determine how many numbers are removed when the puzzle is created. Once the user chooses a difficulty, they will be presented with the sudoku puzzle. They will be able to make notes and also insert numbers. 

To create the Sudoku puzzle, we will first place the numbers 1-9 in random postions on an empty board, then fill it up in the same way as long as the number being inserted fits the rules of sudoku. We will be keeping track of the positions and rules with the cell class. In the same way, we will be removing groups of numbers. If the removal of a number leaves no solution, we will back track. This will be repeated until the amount of numbers fits the difficulty level. 

To launch, run the Game.pde file in processing. 
