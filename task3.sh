# Task 3 completed by Amanda Gurney.
clear
echo " . _________________________________________________________________________________ ."
echo " |                                                                                   |"
echo " |                                    Welcome To                                     |"
echo " |                               Quadratic Sequences!                                |"
echo " |                                                                                   |"
echo " . _________________________________________________________________________________ ."

selection=0
# Choose between Option 1 or 2 of Task 3.
while [ $selection == 0 ]
do

	echo " . _________________________________________________________________________________ ."
	echo " |                                                                                   |"
	echo " |                Press '1' to find the product of your chosen terms.                |"
	echo " |                    Press '2' to try factoring with your terms.                    |"
	echo " |                                                                                   |"
	echo " . _________________________________________________________________________________ ."
	echo
	read -p "                        Which program would you like to enter? " option
	echo

	case $option in
	1)
		# Task 3 option 1.
		echo "             You have chosen option $option. Now entering 'Products of your Terms'!"
		selection=1;;		# Condition to get out of current loop.
	2)
		# Task 3 option 2.
		echo "             You have chosen option $option. Now entering 'Factoring your terms'!"
		selection=1;;		# Condition to get out of current loop.
	*)
		# Error message for invalid input.
		echo "*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*"
		echo "                          Error: Please choose a valid option.                       "
		echo "*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*"

	esac

done
if [[ $option == 1 ]]
then

# Task 3 Option 1 -- products of the terms.
	echo " . _________________________________________________________________________________ ."
	echo " |                                                                                   |"
	echo " |                              Products of your Terms                               |"
	echo " |                                                                                   |"
	echo " . _________________________________________________________________________________ ."

	selection=0

	while [ $selection == 0 ]
	do
		# Enter values for a, b, c, and the amount of terms to display.
		echo "            In a scenario where the equation is: a(n)^2 + b(n) + c ..."
		echo
		read -p "                            Please enter a value for a: " a
		read -p "                            Please enter a value for b: " b
		read -p "                            Please enter a value for c: " c
		echo
		echo " . _________________________________________________________________________________ ."
		echo
		read -p "                       How many terms do you want to display?: " userCount
		echo
		echo " . _________________________________________________________________________________ ."
		echo

		# Verify that a, b, c, and userCount are integers.
		if [[ $a =~ ^[0-9] && $b =~ ^[0-9] && $c =~ ^[0-9] && $userCount =~ ^[0-9] ]]
		then
			selection=1		# Condition to get out of current loop.
			n=1
			termProduct=1
			stepProduct=1
			while [ $n != $userCount ]
			do

				term=$["$a*$n**2+$b*$n+$c"]
				echo "                            The term for sequence $n is: $term"
				echo
				stepProduct=$["$term*$termProduct"]
				termProduct=$["$stepProduct"]
				n=$["$n+1"]

			done
			term=$["$a*$n**2+$b*$n+$c"]
			echo "                            The term for sequence $n is: $term"
			echo
			stepProduct=$["$term*stepProduct"]
			termProduct=$["$stepProduct"]
			echo " . _________________________________________________________________________________ ."
			echo
			echo "                          The product of these terms is: $termProduct"
			echo
			echo " . _________________________________________________________________________________ ."
		else
			# Error message for a, b, c, and userCount input that is invalid.
			echo
			echo "*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*"
			echo "                             Error: Please enter numbers.                            "
			echo "*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*"
			echo
		fi
	done
else [ $option == 2 ]
# Task 3 Option 2 -- factoring the terms.
	echo " . _________________________________________________________________________________ . "
	echo " |                                                                                   | "
	echo " |                               Factoring your Terms                                | "
	echo " |                                                                                   | "
	echo " . _________________________________________________________________________________ . "

	selection=0
	while [ $selection == 0 ]
	do
		# Enter values for a, b, c, and n.
		echo "            In a scenario where the equation is: a(n)^2 + b(n) + c ..."
		echo
		read -p "                           Please enter a value for a:   " a
		read -p "                           Please enter a value for b:   " b
		read -p "                           Please enter a value for c:   " c
		echo
		echo " . _________________________________________________________________________________ ."
		echo
		read -p "                        Please enter a term (n) to display: " n
		echo
		echo " . _________________________________________________________________________________ ."

		# Verify that a, b, c, and n are integers.
		if [[ $a =~ ^[0-9] && $b =~ ^[0-9] && $c =~ ^[0-9] && $n =~ ^[0-9] ]]
		then
			selection=1		# Condition to get out of current loop.
			term=$["$a*$n**2+$b*$n+$c"]
			echo
			echo "                            The term for sequence $n is: $term."
			echo
		else
			# Error message for a, b, c, and n input that is invalid.
			echo "*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!"
			echo "                             Error: Please enter numbers.                           "
			echo "*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!"
			echo
		fi

	done

	selection=0
	while [ $selection == 0 ]
	do

		# Enter value to compare against the term.
		echo " . _________________________________________________________________________________ ."
		echo
		read -p "              Please enter a value to see if $term is a factor of it: " userNumber
		echo
		echo " . _________________________________________________________________________________ ."

		# Verify that userNumber is an integer.
		if [[ $userNumber =~ ^[0-9] ]]
		then

			factor=$["$userNumber % $term"]
				if [ $factor == 0 ]
				# Term is a factor of userNumber.
				then
					echo
					echo "                        Term #$n is $term. It is a factor of $userNumber."
					echo " . _________________________________________________________________________________ ."

				else
				# Term is not a factor of userNumber.
					echo
					echo "                       Term #$n is $term. It is not a factor of $userNumber."
					echo " . _________________________________________________________________________________ ."

				fi
			selection=1		# Condition to get out of current loop.

		# Error message for userNumber input that is invalid.
		else
		echo "*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!"
		echo "                             Error: Please enter numbers.                           "
		echo "*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!*!"
		fi
	done

fi
