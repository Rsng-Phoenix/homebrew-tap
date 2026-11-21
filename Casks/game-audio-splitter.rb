cask "game-audio-splitter" do
  version "2.0.0"
  sha256 "ae08cf0144e8953846ad67016ece5ab01341ea6ca282de9c09899bb2ae8d9c20"

  url "https://github.com/Rsng-Phoenix/game-audio-splitter/releases/download/v#{version}/GameAudioSplitter-macOS.zip"
  name "Game Audio Splitter"
  desc "Play one app's sound on extra output devices at the same time"
  homepage "https://github.com/Rsng-Phoenix/game-audio-splitter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Game Audio Splitter.app"

  zap trash: "~/Library/Preferences/com.gameaudiosplitter.app.plist"

  caveats <<~EOS
    Game Audio Splitter is not notarized. If macOS blocks the first launch,
    open System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
