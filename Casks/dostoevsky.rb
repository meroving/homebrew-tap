cask "dostoevsky" do
  version "1.0.1"
  sha256 "f1491bc422507a7d4f9ca13277299fce31afd3db70c9cabde22a00620e73f211"

  url "https://github.com/meroving/dostoevsky/releases/download/v#{version}/Dostoevsky-#{version}.dmg"
  name "Dostoevsky"
  desc "Writing app that keeps alternatives of any phrase in place"
  homepage "https://dostoevsky.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Dostoevsky.app"

  # Only the .dmg build's own data. A sandboxed build's container isn't Homebrew's to remove.
  zap trash: [
    "~/Library/Application Support/Dostoevsky",
    "~/Library/Saved Application State/app.dostoevsky.Dostoevsky.savedState",
  ]
end
