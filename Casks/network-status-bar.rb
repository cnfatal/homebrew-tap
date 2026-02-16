cask "network-status-bar" do
  version :latest
  sha256 :no_check

  url "https://github.com/cnfatal/NetworkStatusBar/releases/latest/download/NetworkStatusBar.zip"
  name "NetworkStatusBar"
  desc "macOS menu bar tool for monitoring real-time network traffic per process"
  homepage "https://github.com/cnfatal/NetworkStatusBar"

  depends_on macos: ">= :monterey"

  app "NetworkStatusBar.app"

  zap trash: [
    "~/Library/Preferences/com.cnfatal.NetworkStatusBar.plist",
  ]
end
