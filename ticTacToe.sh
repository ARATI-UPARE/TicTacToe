#! /bin/bash -x

echo " #### Welcome to Tic-Tac-Toe Game #### "
declare -a board
# Reset board to start play
#      1 2 3 4 5 6 7 8 9
board=(0 0 0 0 0 0 0 0 0)

# To display board
echo "           "
for (( i=0;i<9;i=i+3 ))
do
		echo " |${board[$i]} | ${board[$i+1]} | ${board[$i+2]} |"
		echo "             "
done

