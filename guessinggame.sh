
#!/usr/bin/env bash
# File: guessinggame.sh

# For locating the directory.
where=$(pwd)

# For knowning how many files are in this directory.
total=0
for files in $(ls)
do
 let total=$total+1
done

# Asking and playing
function verification {
 echo "Let's play!"
 echo "How many files are in you current directory: $where?"
 read response
 while [[ $response -ne $total ]]
 do
  if [[ $response -gt $total ]]
  then
   echo "$response is greater than the number of files in your current directory."
   echo "How many files are in your current directory: $where?"
   read response
  else
   echo "$response is less than the number of files in your current directory."
   echo "How many files are in your current directory: $where?"
   read response
  fi
 done
 echo "Congratulations! Yes there is $response files in your current directory."
}

verification
