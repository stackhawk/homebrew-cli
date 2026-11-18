class Hawk < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  version "6.7.4"

  on_macos do
    on_arm do
      url "https://download.stackhawk.com/hawk/6.7.4/darwin-arm64/hawk"
      sha256 "493493c3ffa56b3548b1a7063420ae662470e3034d3405264a7a1ed51d8db2d2"
    end
    on_intel do
      url "https://download.stackhawk.com/hawk/6.7.4/darwin-x64/hawk"
      sha256 "a585ff0b541a9cde3ae90723e5fd0e0ee725a5479e1ef7a05fe75993b821aee6"
    end
  end

  def install
    bin.install "hawk"
  end

  test do
    system "#{bin}/hawk", "version"
  end
end
