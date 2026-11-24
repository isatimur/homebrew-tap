cask "ai-usage-meter" do
  version "0.1.4"
  sha256 "1055eefe2b8e3a0e7b65ee9eb65ac4f6ee717a4386b22b17d432bd72e0dc5a6a"

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
