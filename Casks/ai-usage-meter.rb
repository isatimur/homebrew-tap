cask "ai-usage-meter" do
  version "0.1.0"
  sha256 "e3bd043157c333276e317e24ea1234677ccad32828e22152e840c3ef58b90961"

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
