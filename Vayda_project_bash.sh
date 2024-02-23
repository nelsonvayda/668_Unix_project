#!/bin/bash
### Make this a bash script that can be executed by putting
### a "shebang" at the top of the file

echo "It works!"


### (1) In your home directory make a directory called RAW_DATA

#cd ~
#mkdir RAW_DATA

[ -d "/$HOME/RAW_DATA" ] && echo "Directory /$HOME/RAW_DATA exists."
[ ! -d "/$HOME/RAW_DATA" ] && cd $HOME  && mkdir RAW_DATA && echo "Created RAW_DATA in $HOME directory"

### (2) Copy all .fna fasta files  
###     from home directory into RAW_DATA (must work from any directory.)

for FILE in $HOME/*.fna
do
        cp $FILE /$HOME/RAW_DATA
done

### (3) Do the same with all primer files ending with .csv

for FILE in $HOME/*.csv
do
        cp $FILE /$HOME/RAW_DATA
done

### (4) In your home directory, make 2 directories: P_DATA and RESULTS

cd ~
mkdir P_DATA
mkdir RESULTS

### (5) Add all three directories to your $PATH: ~/RAW_DATA, ~/P_DATA
###     and ~/RESULTS

export PATH="~/RAW_DATA:$PATH"
export PATH="~/P_DATA:$PATH"
export PATH="~/RESULTS:$PATH"

### (6) Write your entire $PATH, the text string RAW_DATA and the 
###    contents of this directory (the names of the files) into a new file 
###    called 'readme.txt' in your home directory

echo $PATH > readme.txt
echo "RAW_DATA" > readme.txt
cd RAW_DATA
ls >> readme.txt

### (7) The last command should output the contents of readme.txt
###     to the terminal.

cd ~
cat readme.txt

