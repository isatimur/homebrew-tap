cask "ai-usage-meter" do
  version "0.1.7"
  sha256 "edac6588f5d3bdb6acba1f104de8b4cf2628324d0efdf2545fec3faf6c772761"

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
