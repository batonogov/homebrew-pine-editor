cask "pine-editor" do
  version "1.0.0"
  sha256 "ffe93c7fb34c684d1b05ad9ead35fc25bf0e8c065f795e7c94df42be09e211cd"

  url "https://github.com/batonogov/pine/releases/download/v#{version}/Pine.dmg"
  name "Pine"
  desc "A native Mac code editor"
  homepage "https://github.com/batonogov/pine"

  depends_on macos: ">= :tahoe"

  app "Pine.app"

  zap trash: [
    "~/Library/Preferences/io.github.batonogov.pine.plist",
    "~/Library/Saved Application State/io.github.batonogov.pine.savedState",
  ]
end
