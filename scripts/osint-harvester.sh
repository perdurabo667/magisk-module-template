
#!/data/data/com.termux/files/usr/bin/bash
# OSINT Harvester setup and run script for Termux

echo "Updating Termux packages..."
pkg update -y && pkg upgrade -y

echo "Installing Python and git..."
pkg install -y python git

echo "Cloning theHarvester repository..."
git clone https://github.com/laramies/theHarvester.git ~/theHarvester

cd ~/theHarvester
pip install -r requirements/base.txt

echo "theHarvester is installed."
echo "Usage example:"
echo "python theHarvester.py -d example.com -l 100 -b all"

# Prompt user for domain
read -p "Enter target domain: " DOMAIN
python theHarvester.py -d "$DOMAIN" -l 100 -b all

echo "Results saved in the output above."
