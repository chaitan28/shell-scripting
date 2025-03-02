#!/bin/bash

# Prompt for the username
read -p "Enter username to be created: " username

# Check if the user already exists
if id "$username" &> /dev/null; then
  echo "User $username already exists in the server."
else
  # Create the user
  sudo useradd -m "$username"
  
  # Check if the user was created successfully
  if id "$username" &> /dev/null; then
    echo "New user: $username created."
    
    # Prompt for the password
    read -sp "Enter password for $username: " password
    echo
    
    # Set the password for the user
    echo "$username:$password" | sudo chpasswd
    
    # Check if the password was set successfully
    if [ $? -eq 0 ]; then
      echo "Password for $username set successfully."
    else
      echo "Failed to set password for $username."
    fi
  else
    echo "Failed to create user $username."
  fi
fi