class HawkAT630 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  version "6.3.0"

  on_macos do
    on_arm do
      url "https://download.stackhawk.com/hawk/6.3.0/darwin-arm64/hawk"
      sha256 "a5be1aed777c76882f48270db6054f2eec0557bd69ea844b601ac00902307960"
    end
    on_intel do
      url "https://download.stackhawk.com/hawk/6.3.0/darwin-x64/hawk"
      sha256 "29f4998cf1fa07f71b6b19ea4d8db102d21abf2bd7778d255ea9224481798e74"
    end
  end

  def install
    bin.install "hawk"
  end

  test do
    system "#{bin}/hawk", "version"
  end
end
