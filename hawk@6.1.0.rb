class HawkAT610 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  version "6.1.0"

  on_macos do
    on_arm do
      url "https://download.stackhawk.com/hawk/6.1.0/darwin-arm64/hawk"
      sha256 "c3936ca1e99b1a47e9a427fd60612a230a13a89b3232e66097b20a3c12d4ace6"
    end
    on_intel do
      url "https://download.stackhawk.com/hawk/6.1.0/darwin-x64/hawk"
      sha256 "1716fe0520cd4ae73c89024b05e77a5b1688de7e64ef9e4e15415fe8f1c93b93"
    end
  end

  def install
    bin.install "hawk"
  end

  test do
    system "#{bin}/hawk", "version"
  end
end
