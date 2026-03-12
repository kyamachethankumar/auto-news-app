# PowerShell script to set up the environment, install Flutter, and set up the Flutter project

# Update and install required dependencies
Invoke-Expression -Command "sudo apt update && sudo apt install -y fonts-liberation libasound2 libatk-bridge2.0-0 libatk1.0-0 libatspi2.0-0 libcups2 libgbm1 libgtk-3-0 libvulkan1 libxcomposite1 libxdamage1 libxfixes3 libxkbcommon0 libxrandr2 xdg-utils ninja-build libgtk-3-dev mesa-utils && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install ./google-chrome-stable_current_amd64.deb && export CHROME_EXECUTABLE=/usr/bin/google-chrome"

# Install Flutter
Invoke-Expression -Command "git clone https://github.com/flutter/flutter.git -b stable && export PATH=\"$PATH:`pwd`/flutter/bin\""

# Verify Flutter installation
Invoke-Expression -Command "flutter doctor"

# Create a new Flutter project
Invoke-Expression -Command "flutter create my_news_app"

# Navigate into the project directory
Invoke-Expression -Command "cd my_news_app"

# Run the Flutter app on the web server
Invoke-Expression -Command "flutter run -d web-server"