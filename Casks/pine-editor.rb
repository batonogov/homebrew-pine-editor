cask "pine-editor" do
  version "1.13.0"
  sha256 "4fb2f8bbadf0c72f80340484afacb9da00a96e2a90a6e86b1709b2b2d4acd1be"

  url "https://github.com/batonogov/pine/releases/download/v#{version}/Pine-#{version}.dmg"
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
