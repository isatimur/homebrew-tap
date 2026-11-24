cask "ai-usage-meter" do
  version "0.1.5"
  sha256 "4fa661c0fd8a10dad6c3e3cd13560aa7bc7911a14a2309776dc16e8662553f66"

  url "https://github.com/isatimur/ai-usage-meter/releases/download/v#{version}/AIUsageMeter-#{version}.dmg"
  name "AI Usage Meter"
  desc "Menu-bar app for AI coding tool usage, cost and plan limits"
  homepage "https://github.com/isatimur/ai-usage-meter"

  depends_on macos: :sonoma

  app "AIUsageMeter.app"

  zap trash: [
    "~/Library/Caches/app.aiusagemeter.AIUsageMeter",
    "~/Library/Preferences/app.aiusagemeter.AIUsageMeter.plist",
  ]
end
