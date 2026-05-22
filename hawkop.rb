class Hawkop < Formula
  desc "CLI companion for the StackHawk AppSec Intelligence Platform"
  homepage "https://www.stackhawk.com/"
  license "MIT"

  on_macos do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "cdbd0982a034ba524c9b3d5be44678971edcd70d20f6c474e2800203f84c308d"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "7259a6175a3a9e4568bea3b83642d420d69c45a93941b45fa4e22ef371355f14"
    end
  end

  on_linux do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f42bd68147ad808e21e5785ae20db176bdb47b9d210c5e4a1c8126961a4c2bd9"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75293622036a0a2619a8f5805627b0387d59f0afafc1e77656abd3cc5de1c83e"
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
