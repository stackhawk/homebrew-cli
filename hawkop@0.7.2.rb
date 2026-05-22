class HawkopAT072 < Formula
  desc "CLI companion for the StackHawk AppSec Intelligence Platform"
  homepage "https://www.stackhawk.com/"
  license "MIT"

  on_macos do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "6f6382e492dc834e1c28042c03d7363921e18b44948945b0f6854d584d363861"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "badf41bdc487ece417d2de864e9b979b00f5ebeb104973dafe773675cf4d1342"
    end
  end

  on_linux do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d21b41fbc332cb0069ae4d0d0e8b41b7a4df7efd6a97487367343ae51c9e1b08"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4deaab8383dde1cf3795c07a00cec20d07eb8bd26e8da22730c5e74db344ea1"
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
