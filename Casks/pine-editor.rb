cask "pine-editor" do
  version "0.9.0"
  sha256 "68c6641b63acfb423b19c7b6f6fc50cf21b3cb35beb69c543fb1c809ccd55e5e"

  url "https://github.com/batonogov/pine/releases/download/v#{version}/Pine.dmg"
  name "Pine"
  desc "Minimal native macOS code editor"
  homepage "https://github.com/batonogov/pine"

  depends_on macos: ">= :sequoia"

  app "Pine.app"

  zap trash: [
    "~/Library/Preferences/io.github.batonogov.pine.plist",
    "~/Library/Saved Application State/io.github.batonogov.pine.savedState",
  ]
end
