cask "angry-ip-scanner" do
  version "3.9.1"
  sha256 "373a203298d08124a36414b2d832960d7c1cb121b65126863640d0445100cb65" # This will be auto-filled by brew

  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-macArm64-#{version}.zip"
  name "Angry IP Scanner"
  desc "Fast and friendly network scanner"
  homepage "https://angryip.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Angry IP Scanner.app"
end