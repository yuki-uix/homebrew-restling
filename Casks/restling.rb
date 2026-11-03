cask "restling" do
  version "0.12.0"
  sha256 "94002d77ff82c75f8d6466a4b3b712473de9456269fe65d281cf30302166c744"

  url "https://github.com/yuki-uix/restling/releases/download/v#{version}/Restling-#{version}-universal.zip"
  name "Restling"
  desc "Gentle eye-rest reminders that grow a personal pixel forest"
  homepage "https://github.com/yuki-uix/restling"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

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
