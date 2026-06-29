class HawkAT600 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  version "6.0.0"

  on_macos do
    on_arm do
      url "https://download.stackhawk.com/hawk/6.0.0/darwin-arm64/hawk"
      sha256 "2de8da878f790534991b20faa6fd44c3d9c59809396b829e08d0a74ac6074cf2"
    end
    on_intel do
      url "https://download.stackhawk.com/hawk/6.0.0/darwin-x64/hawk"
      sha256 "cf285d548b7d35c27e9dd79344cfa2e8be5f566e9fc8c889e9241a16177814d1"
    end
  end

  def install
    bin.install "hawk"
  end

  test do
    system "#{bin}/hawk", "version"
  end
end
