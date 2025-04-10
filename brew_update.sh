/usr/bin/env bash
brew bundle --file="./Brewfile"

brew tap snyk/tap
brew install snyk

brew tap stackitcloud/tap
brew install stackit

brew tap k8sgpt-ai/k8sgpt
brew install k8sgpt

echo "use bettertouchtool as a replacement to run cronjobs on macOS"
