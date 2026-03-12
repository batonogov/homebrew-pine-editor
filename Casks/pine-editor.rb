cask "pine-editor" do
  version "0.8.0"
  sha256 "eb392c3a08505cac16abfbf5879f5cbce531e6ef46bbbe9ec6d7805d4c0fe23d"

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
