#!/bin/bash

source ~/.bashrc

# Version
if [[ $1 == "--version" || $1 == "-v" ]]; then
    echo "internsctl v0.1.0"
    exit 0
fi

if [[ $# -eq 0 ]]; then
    echo "internsctl v0.1.0"
    exit 0
fi

# Help Section
if [[ $1 == "--help" ]]; then
cat <<EOF
internsctl v0.1.0
    Usage: internsctl [command] [options]

    Commands:
      --version, -v   Display the version
      --help          Display this help message

    Examples:
      internsctl --version   # Check the version
      internsctl --help      # Get help

    For more detailed information, see the manual page:
      man internsctl
      man internsctl
EOF
exit 0
fi

# CPU Info
if [[ $1 == "cpu" && $2 == "getinfo" ]]; then
    lscpu
    exit 0
fi

# Memory Info
if [[ $1 == "memory" && $2 == "getinfo" ]]; then
    free
    exit 0
fi

# User Creation
if [[ $1 == "user" && $2 == "create" ]]; then
    if [[ -z "$3" ]]; then
        echo "Error: Please specify a username."
        exit 1
    fi
    sudo useradd -m -s /bin/bash $3
    echo "User $3 created successfully."
    exit 0
fi

# User Listing
if [[ $1 == "user" && $2 == "list" ]]; then
    getent passwd | grep -v "/bin/false" | cut -d: -f1
    exit 0
fi

# User Listing only Sudo
if [[ $1 == "user" && $2 == "list" && $3 == "--sudo-only" ]]; then
    grep -E "^\s*[^#]+\s+ALL=(ALL:ALL)\s+ALL\s*$" /etc/sudoers | cut -d: -f1
    exit 0
fi

# File getinfo
if [[ $1 == "file" && $2 == "getinfo" ]]; then
    if [[ -z "$3" ]]; then
        echo "Error: Please specify a filename."
        exit 1
    fi

    file="$3"

    if [[ $4 == "--size" || $4 == "-s" ]]; then
        stat -c %s "$file"
        exit 0
    elif [[ $4 == "--permissions" || $4 == "-p" ]]; then
        stat -c %a "$file"
        exit 0
    elif [[ $4 == "--owner" || $4 == "-o" ]]; then
        stat -c %U "$file"
	exit 0
    elif [[ $4 == "--last-modified" || $4 == "-m" ]]; then
        stat -c %y "$file"
        exit 0
    else
        echo "File: $file"
        echo "Access: $(stat -c %a "$file")"
        echo "Size(B): $(stat -c %s "$file")"
        echo "Owner: $(stat -c %U "$file")"
        echo "Modify: $(stat -c %y "$file")"
        exit 0
    fi
fi
