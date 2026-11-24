cask "ai-usage-meter" do
  version "0.1.6"
  sha256 "161ba5df4a413c703dcea3dfee536dd7dae6e09e96e545ec4da3bd83ddfce882"

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
