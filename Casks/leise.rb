cask "leise" do
  version "1.7.1"
  sha256 "299db9aa858143cfea02fb64b6482507624ff9bc38b8ab043b175e36b362569e"

  url "https://github.com/zoltanf/Leise/releases/download/v#{version}/Leise-#{version}-macOS-arm64.dmg"
  name "Leise"
  desc "Private, local-first speech-to-text app"
  homepage "https://github.com/zoltanf/Leise"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Leise.app"

  uninstall quit: "com.leise.mac"

  zap trash: [
    "~/Library/Application Support/Leise",
    "~/Library/Caches/com.leise.mac",
    "~/Library/HTTPStorages/com.leise.mac",
    "~/Library/Preferences/com.leise.mac.plist",
    "~/Library/Saved Application State/com.leise.mac.savedState",
  ]

  caveats <<~EOS
    Leise community releases are ad-hoc signed and are not notarized by Apple.
    If macOS blocks the first launch, run:

      xattr -dr com.apple.quarantine /Applications/Leise.app

    Leise will request Microphone and Accessibility access when needed.
  EOS
end
