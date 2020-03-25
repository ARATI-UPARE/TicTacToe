#! /bin/bash -x

echo " #### Welcome to Tic-Tac-Toe Game #### "

declare -a board

# Constant maximum cell
max_Cell=9

# Variable to count used cell
cell_Count=0  

# Reset board to start play

board=(1 2 3 4 5 6 7 8 9)

# To display board
function displayBoard()
{
echo "  ------------"
		for (( i=0;i<7;i=i+3 ))
		do
				echo " | ${board[$i]} | ${board[$i+1]} | ${board[$i+2]} |"
				echo "  ------------"
		done
}


# To assign symbol for player
function  assignSymbol()
{
		symbol=$((RANDOM%2))
		if [[ $symbol -eq 1 ]]
		then
				player="user"
				echo "Your symbol is X "
				user="X"
				computer="O"
		else
				player="computer"
				echo "Your symbol is O "
				user="O"
				computer="X"
		fi
}


# To know who play
function switchPlayer(){
   if [[ $player == "user" ]]
   then
      userPlay
   else
      computerPlay
   fi
}

# To show Board condition
function checkCondition()
{
   displayBoard
   (( cell_Count++ ))
}

displayBoard
assignSymbol
switchPlayer
checkCondition
