cask "2ti-lmailer" do
  version "1.0.0"
  sha256 "bc13da25ed0738516c7265554c9e19b6d7680ec3546bce1a29c6fb070adaa9f4"

  url "https://2tinteractive.com/apps/releases/2ti-lmailer-latest-universal.dmg"
  name "2TI LMailer"
  desc "Sovereign Email, Calendar & Local Ollama AI Suite (Includes 30 Days Free Usage)"
  homepage "https://2tinteractive.com/apps/lmailer/"

  livecheck do
    url "https://2tinteractive.com/apps/api/v1/updates/manifest?app=lmailer"
    strategy :json do |json|
      json["version"]
    end
  end

  app "2TI LMailer.app"

  caveats <<~EOS
    2TI LMailer includes 30 Days Free Usage during pre-release evaluation.
    Claim your instant Ed25519 evaluation key at:
      https://2tinteractive.com/apps/portal
  EOS
end
