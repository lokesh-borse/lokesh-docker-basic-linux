#!/bin/bash

echo "Basic Linux Commands Demo:"
echo "-----------------------------"

echo "1. Showing present working directory (pwd):"
pwd

echo "2. Listing files (ls):"
ls -al

echo "3. Creating a new directory:"
mkdir demo_folder
echo "Created demo_folder"

echo "4. Showing system info (uname -a):"
uname -a

echo "5. Creating and reading a file:"
echo "Hello from Docker container!" > sample.txt
cat sample.txt

echo "------ End of Script ------"
