class HawkopAT071 < Formula
  desc "CLI companion for the StackHawk AppSec Intelligence Platform"
  homepage "https://www.stackhawk.com/"
  license "MIT"

  on_macos do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "f4c4c1fab4d53a0e5d6da820f4090384213a8eb8ad907280e2878bc6fcb515b1"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "61e59f69694accf1a8de7c11e61ee8d76cd981db277faf79c87f23a12a37480e"
    end
  end

  on_linux do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "648ff03600e93c401e1ba264a3b774328b3531fa5edc80dfcdd077f6be236218"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a708461ab1add31a4e5d59bffb8f7ec82f61543eb4add7e75fc5e6a1c3d89ae4"
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
