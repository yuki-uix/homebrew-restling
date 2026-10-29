cask "restling" do
  version "0.8.0"
  sha256 "11140a9f69006e75d6beed52edd92c65f050d55b2d2f36248b23dc178b6590d9"

  url "https://github.com/yuki-uix/restling/releases/download/v#{version}/Restling-#{version}-universal.zip"
  name "Restling"
  desc "Gentle eye-rest reminders that grow a personal pixel forest"
  homepage "https://github.com/yuki-uix/restling"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Restling.app"

  uninstall quit: "local.yuki.breaktime"

  zap trash: [
    "~/Library/Preferences/local.yuki.breaktime.plist",
    "~/Library/Saved Application State/local.yuki.breaktime.savedState",
  ]

  caveats <<~EOS
    Restling is an ad-hoc-signed preview and is not notarized by Apple.
    If macOS blocks the first launch, review it in System Settings >
    Privacy & Security > Open Anyway.
  EOS
end
