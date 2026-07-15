class HawkAT620 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  version "6.2.0"

  on_macos do
    on_arm do
      url "https://download.stackhawk.com/hawk/6.2.0/darwin-arm64/hawk"
      sha256 "3168a7f6a4e08c06ffd7ba35262edfd755b16b43b1d740a6dad45f027e88ca96"
    end
    on_intel do
      url "https://download.stackhawk.com/hawk/6.2.0/darwin-x64/hawk"
      sha256 "18edb1c855da7ed49e94ef640db2e64390a9329a8f8abe990e93ecc55d914dae"
    end
  end

  def install
    bin.install "hawk"
  end

  test do
    system "#{bin}/hawk", "version"
  end
end
