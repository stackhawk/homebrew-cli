class HawkAT650 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  version "6.5.0"

  on_macos do
    on_arm do
      url "https://download.stackhawk.com/hawk/6.5.0/darwin-arm64/hawk"
      sha256 "c64984857038162ef5e2fd359c310475b25f09a076138fc038905b55636fae4d"
    end
    on_intel do
      url "https://download.stackhawk.com/hawk/6.5.0/darwin-x64/hawk"
      sha256 "aee60f7c3661bc3858d19f6789e5e00577a9da96f69b45ce0ad3a802353d2a61"
    end
  end

  def install
    bin.install "hawk"
  end

  test do
    system "#{bin}/hawk", "version"
  end
end
