cask "leise" do
  version "1.7.3"
  sha256 "6c66d07486b42ed7684da35cf1b6665a16b79d8baa4282f72923dff38653bfff"

  url "https://github.com/zoltanf/Leise/releases/download/v#{version}/Leise-#{version}-Offline-macOS-arm64.dmg"
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
