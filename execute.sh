#!/bin/bash

# ============================================
#          EXECUTER v1.0 - Script Runner
#       Make Any Script Executable & Run It
# ============================================

# Cool ASCII Banner
echo "
███████╗██╗  ██╗███████╗ ██████╗██╗   ██╗████████╗███████╗██████╗ 
██╔════╝╚██╗██╔╝██╔════╝██╔════╝██║   ██║╚══██╔══╝██╔════╝██╔══██╗
█████╗   ╚███╔╝ █████╗  ██║     ██║   ██║   ██║   █████╗  ██████╔╝
██╔══╝   ██╔██╗ ██╔══╝  ██║     ██║   ██║   ██║   ██╔══╝  ██╔══██╗
███████╗██╔╝ ██╗███████╗╚██████╗╚██████╔╝   ██║   ███████╗██║  ██║
╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝  ╚═╝
"
echo "============================================"
echo "  🚀 Quick Script Executor & Runner v1.0"
echo "============================================"
echo

# Get the script filename
read -p "📝 Enter the script filename (e.g., script.sh): " SCRIPT

# Check if file exists
if [ ! -f "$SCRIPT" ]; then
    echo "❌ Error: File '$SCRIPT' not found!"
    exit 1
fi

# Check if it's already executable
if [ -x "$SCRIPT" ]; then
    echo "✅ File is already executable!"
else
    echo "⚙️  File is not executable yet..."
fi

# Show what we're about to do
echo
echo "============================================"
echo "📄 File: $SCRIPT"
echo "📍 Location: $(pwd)"
echo "🔧 Action: Make executable & run"
echo "============================================"
echo

# Confirm before executing
read -p "⚠️  Execute and run this script? (y/n): " CONFIRM

if [ "$CONFIRM" != "y" ]; then
    echo "❌ Operation cancelled."
    exit 0
fi

# Make executable and run
echo
echo "🔧 Making script executable..."
chmod +x "$SCRIPT"

if [ $? -ne 0 ]; then
    echo "❌ Failed to make script executable!"
    exit 1
fi

echo "✅ Script is now executable!"
echo
echo "🚀 Running script..."
echo "============================================"
echo

# Run the script
./"$SCRIPT"

# Check if script ran successfully
if [ $? -eq 0 ]; then
    echo
    echo "============================================"
    echo "✅ Script executed successfully!"
else
    echo
    echo "============================================"
    echo "⚠️  Script finished with errors (exit code: $?)"
fi

echo "============================================"
echo "🎉 EXECUTER COMPLETE"
echo
exit 0
