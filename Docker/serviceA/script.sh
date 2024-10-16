#!/bin/sh

# API endpoint URL - Gel ILS quotes
API_URL="https://www.random.org/integers/?num=1&min=1&max=10000&col=1&base=10&format=plain"

# Function to check if a command exists
################################
# Usage:    command_exists <command_name>
# Returns:  0 if the command exists, 1 otherwise.
# Note:     This function uses the 'command -v' command to find the location of the command.
################################
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if curl is installed
if ! command_exists curl; 
then
    echo "Error: curl is not installed. Please install curl and try again."
    exit 1
fi

# Infinite loop to retrive number
while [ 1 -eq 1 ];
do 
    # Fetch USD rate data
    random=$(curl -s $API_URL)

    # Check if the rate was successfully extracted
    if [ -n "$random" ]; 
    then
        echo "Random numbers is: $random"
    else
        echo "Error: Unable to retrieve random number. Please try again later."
        exit 1
    fi
    # Sleep for 3 seconds
    sleep 3
done