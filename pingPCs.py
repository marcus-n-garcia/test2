#ping list of PCs to check connectivity
#Return on or off status based on ping results

import subprocess

PCs = ["09","11","16","18","19","29"]

def ping(host):
    try:
        subprocess.run(['ping', host], check=True)
    except subprocess.CalledProcessError:
        print(f"Failed to ping {host}")

# Replace 'example.com' with the desired host or IP address

for number in PCs:
    ping('PANG301' + number)
