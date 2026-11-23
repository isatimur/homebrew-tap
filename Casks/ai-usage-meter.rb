cask "ai-usage-meter" do
  version "0.1.1"
  sha256 "0f040624f024aa50d92086eb3513489b2146003aa60f9c416e3479cf9dd036b6"

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
