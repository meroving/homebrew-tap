cask "dostoevsky" do
  version "1.0.2"
  sha256 "5d6b30b38a874619c7eadc883ee30195586bd6fed5e7ed072f25662a2b2f5933"

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
