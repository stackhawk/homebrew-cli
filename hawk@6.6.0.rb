class HawkAT660 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  version "6.6.0"

  on_macos do
    on_arm do
      url "https://download.stackhawk.com/hawk/6.6.0/darwin-arm64/hawk"
      sha256 "af3c9e64987110b5bdb8cb83036013ba5b38f0d8a0a8ea1f26b8199d4ba17c0a"
    end
    on_intel do
      url "https://download.stackhawk.com/hawk/6.6.0/darwin-x64/hawk"
      sha256 "fcf5b4d5715c1dd9a4c6950919633c06eb227df56897fd5d0f64b5677336e625"
    end
  end

  def install
    bin.install "hawk"
  end

  test do
    system "#{bin}/hawk", "version"
  end
end
