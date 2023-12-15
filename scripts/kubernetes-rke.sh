#!/bin/bash

# Credits: https://www.suse.com/support/kb/doc/?id=000020162

# Package information
PACKAGE_AUTHOR="txj-xyz"
PACKAGE_VERSION="v1.0.1"

# Insert spacer for new section
spacer() {
    echo -e "\t---------------------------"
}

# Print banner information
banner() {
    spacer;
    echo -e "\tRancher Node Cleanup Script"
    echo -e "\tVersion: $PACKAGE_VERSION"
    echo -e "\t Author: $PACKAGE_AUTHOR"
    spacer;
}

# Main running thread process
main() {

    # Header for printing version etc
    banner;

    # Install deps before checking anything
    echo -e "\tStarting dependency check"
    apt update -qq
    apt upgrade -yqq
    apt install curl -y

    # --- Start download ---
    spacer;

    # Download latest cleanup script from Rancher Labs
    curl -sLO https://github.com/rancherlabs/support-tools/raw/master/extended-rancher-2-cleanup/extended-cleanup-rancher2.sh

    # --- Finish download ---
    spacer;

    # Run the newly downloaded script
    sudo bash extended-cleanup-rancher2.sh

    # Remove the script from the drive after its done running.
    rm -rvf extended-cleanup-rancher2.sh

    # Completed
    spacer;
    echo -e "\tCompleted."
}

# Start main thread
main;