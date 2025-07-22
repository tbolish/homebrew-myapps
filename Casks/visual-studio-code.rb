cask "visual-studio-code" do
  # This version and sha256 are filled in by brew.
  # Yours might be newer, which is perfect.
  version "1.92.0"
  sha256 "7adae6a56e34cb64d08899664b814cf620465925" # This is just an example sha

  url "https://update.code.visualstudio.com/#{version}/darwin-arm64/stable"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/darwin-arm64/stable/latest"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true

  app "Visual Studio Code.app"

  zap trash: [
    "~/.vscode",
    "~/Library/Application Support/Code",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*",
    "~/Library/Caches/com.microsoft.vscode",
    "~/Library/Caches/com.microsoft.vscode.ShipIt",
    "~/Library/Preferences/com.microsoft.vscode.plist",
    "~/Library/Saved Application State/com.microsoft.vscode.savedState",
  ]
end