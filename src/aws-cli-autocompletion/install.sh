#!/bin/sh
set -e

echo "Activating feature 'aws-cli-autocompletion'"

#GREETING=${GREETING:-undefined}
#echo "The provided greeting is: $GREETING"

# The 'install.sh' entrypoint script is always executed as the root user.
#
# These following environment variables are passed in by the dev container CLI.
# These may be useful in instances where the context of the final 
# remoteUser or containerUser is useful.
# For more details, see https://containers.dev/implementors/features#user-env-var
echo "The effective dev container remoteUser is '$_REMOTE_USER'"
echo "The effective dev container remoteUser's home directory is '$_REMOTE_USER_HOME'"

echo "The effective dev container containerUser is '$_CONTAINER_USER'"
echo "The effective dev container containerUser's home directory is '$_CONTAINER_USER_HOME'"

touch ~/tilde-$(whoami)-$(date '+%Y-%m-%d-%H-%M-%S')
touch /home/$(whoami)/abs-$(whoami)-$(date '+%Y-%m-%d-%H-%M-%S')

echo "#" >> ~/.bashrc 
echo "# Enabling AWS CLI autocompletion ..." >> ~/.bashrc 
echo "#" >> ~/.bashrc 
echo "export PATH=/usr/local/bin/:$PATH" >> ~/.bashrc 
echo "complete -C '/usr/local/bin/aws_completer' aws" >> ~/.bashrc
echo "Installed AWS CLI autocompletion."

# cat > /usr/local/bin/aws-cli-autocompletion \
# << EOF
# #!/bin/sh
# RED='\033[0;91m'
# NC='\033[0m' # No Color
# echo "\${RED}\$(whoami)!\${NC}"
# EOF

# chmod +x /usr/local/bin/aws-cli-autocompletion