cask "ai-usage-meter" do
  version "0.1.2"
  sha256 "60fed75063b34d2cfe44f6e75b9f4b2185d800c19a6faba6a6f1149d420cc3ba"

  url "https://github.com/isatimur/ai-usage-meter/releases/download/v#{version}/AIUsageMeter-#{version}.dmg"
  name "AI Usage Meter"
  desc "Menu-bar app for AI coding tool usage, cost and plan limits"
  homepage "https://github.com/isatimur/ai-usage-meter"

  depends_on macos: ">= :sonoma"

  app "AIUsageMeter.app"

  zap trash: [
    "~/Library/Preferences/app.aiusagemeter.AIUsageMeter.plist",
    "~/Library/Caches/app.aiusagemeter.AIUsageMeter",
  ]
end
