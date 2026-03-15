# This file is auto-updated by release.sh — do not edit manually.
cask "mistype" do
  version "1.1"
  sha256 "4db2c47881f733c192fd98f944e8b0c4a973a3afbe5d23591c121cb56cf9ad84"

  url "https://github.com/ipintush/mistype/releases/download/v1.1/Mistype-1.1.pkg"
  name "Mistype"
  desc "Toggle selected text between Hebrew and English keyboard layouts"
  homepage "https://github.com/ipintush/mistype"

  pkg "Mistype-#{version}.pkg"

  uninstall pkgutil: "com.mistype.app",
            delete:  "/Applications/Mistype.app"

  zap trash: "~/Library/Preferences/com.mistype.app.plist"
end
