import subprocess

# Prompt user to enter the path to the text file
file_path = "C:\\Users\\garciamarcu\\Documents\\Haxor\\names.txt"

try:
    # Open and read each line from the file
    with open(file_path, 'r') as file:
        lines = file.readlines()

        # Loop through each line and run command
        for line in lines:
            # Strip newline characters and run your command using the input from the file
            command = f"net user /domain {line.strip()}"
            
            # Run the command using subprocess
            subprocess.run(command, shell=True, check=True)

except FileNotFoundError:
    print(f"File not found: {file_path}")
except Exception as e:
    print(f"An error occurred: {e}")
