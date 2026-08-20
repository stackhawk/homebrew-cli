class HawkAT640 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  version "6.4.0"

  on_macos do
    on_arm do
      url "https://download.stackhawk.com/hawk/6.4.0/darwin-arm64/hawk"
      sha256 "3abfdebd71e5b16b19eb4bfc3c381210f6950542517de1f32b833c9cc3b08ce3"
    end
    on_intel do
      url "https://download.stackhawk.com/hawk/6.4.0/darwin-x64/hawk"
      sha256 "30661edf60853ea0c016267a5f4ec2ea8f11baf94604716d3c6ee49885a86971"
    end
  end

  def install
    bin.install "hawk"
  end

  test do
    system "#{bin}/hawk", "version"
  end
end
