#!/bin/bash

# Check OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
else
    echo "Unsupported OS. Please try running the portable version."
    exit 1
fi

# Check for Windows
if [[ "$OS" == "linux" && $(uname -r) == *microsoft* ]]; then
    echo "Windows is not supported."
    exit 1
fi

# Download scm-cli script
echo "Downloading scm-cli script..."
temp_dir=$(mktemp -d)
curl -L -o "$temp_dir/scm-cli" https://raw.githubusercontent.com/YourGitHubUsername/YourRepoName/main/scm-cli

if [ $? -ne 0 ]; then
    echo "Failed to download scm-cli script. Please check your internet connection and try again."
    exit 1
fi

# Make the script executable
chmod +x "$temp_dir/scm-cli"

# Move the script to a directory in PATH
if [[ "$OS" == "linux" ]]; then
    sudo mv "$temp_dir/scm-cli" /usr/local/bin/
elif [[ "$OS" == "macos" ]]; then
    sudo mv "$temp_dir/scm-cli" /usr/local/bin/
fi

# Clean up
rm -rf "$temp_dir"

echo "scm-cli has been installed. You can now run it from anywhere using the command 'scm-cli'."

# Provide a hint to the user to restart their shell if needed
echo "If you get a 'command not found' error, please restart your terminal or run 'source ~/.bashrc' or 'source ~/.zshrc' (depending on your shell)."
