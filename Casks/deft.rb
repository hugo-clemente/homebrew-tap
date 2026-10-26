cask "deft" do
  # ponytail: :latest + :no_check means no per-release bump.
  # Pin version and sha256 (bumped by the release workflow) once upgrades matter.
  version :latest
  sha256 :no_check

  url "https://github.com/hugo-clemente/deft/releases/latest/download/Deft.zip"
  name "Deft"
  desc "Keyboard overlay app launcher"
  homepage "https://github.com/hugo-clemente/deft"

  depends_on macos: :sonoma

  app "Deft.app"

  zap trash: "~/Library/Application Support/Deft"

  caveats <<~EOS
    Deft isn't notarized yet: allow it once in System Settings → Privacy & Security → Open Anyway,
    then grant Accessibility when asked.
  EOS
end
