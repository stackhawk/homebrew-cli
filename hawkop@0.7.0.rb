class HawkopAT070 < Formula
  desc "CLI companion for the StackHawk AppSec Intelligence Platform"
  homepage "https://www.stackhawk.com/"
  license "MIT"

  on_macos do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "1e16e592a467f1895d42fd74f2aab6003034571ac29ae8095fdafc401696e551"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ee62d4626e91897e83d7dcf279b02cdd606a993220d4497f725939528866e76"
    end
  end

  on_linux do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aeae794868f7cd28b73933b1b44f938155ad982fbf5656c88bbb8bac97acc712"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "515667493f46be0e8541fdde378f43dede328e99ea38eb2d03b091c7d7d784fb"
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
