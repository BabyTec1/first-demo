#!bin/bash

#Prompt user to enter any word
read -p "Please enter a word: " word

#Prompt user for the number of times to repeat the word
read -p "How many times will you like to repeat the word?: " count

# Validate that the count is a positive integer
if ! [[ "$count" =~ ^[0-9]+$ ]] || [ "$count" -le 0 ]; then
  echo "Error: Please enter a valid positive number."
  exit 1
fi

#Initialize a counter to 1
i=1

#Use a while loop to repeat the word
while [ $i -le $count ]
do                                                                                                        
        echo "$i: $word"                                                                                      
        i=$((i + 1))                                                                          
done                                                                                                      

#Indicate the completion                                                                                  
echo "Finished repeating the word $word!" 
