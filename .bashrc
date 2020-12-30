export WSLIP=$(ifconfig $(route -n | grep ^0.0.0.0 | awk '{print $NF}') | grep inet | grep -v inet6 | awk '{print $2}')

# after save please restart your terminal or use command ". ~/.bashrc" to reload your shell