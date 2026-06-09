class HawkopAT0110 < Formula
  desc "CLI companion for the StackHawk AppSec Intelligence Platform"
  homepage "https://www.stackhawk.com/"
  license "MIT"

  on_macos do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "dd8bcd4ac2bcb1308ab47c8be05dc6448193d27dcf474e0009cfbf5c750065fa"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac4cc229b9bc004ad8c4fb2ba9cfedc12ff07922da53c099bc897cd565a0e77e"
    end
  end

  on_linux do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e37168b6361b39d6a67eb1426b31328b2a8bb8472a53b8c7dcffd35ffa720c3"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ffe307c834d7987582612be7e821515f67fbbfb81c6d4d330b3fbac159d6e25"
    end
  end

  def install
    bin.install "hawkop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hawkop --version")
    system bin/"hawkop", "--help"
  end
end
