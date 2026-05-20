class HawkopAT072 < Formula
  desc "CLI companion for the StackHawk AppSec Intelligence Platform"
  homepage "https://www.stackhawk.com/"
  license "MIT"

  on_macos do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "97b9129a6be66287d43e09fbcd84207f82c71c94a29fd3ba612a778796b388c8"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "2540a0f3db5ee49487192b50249f444c6abef99e6cdea2aa65a4e6382af8243f"
    end
  end

  on_linux do
    on_intel do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d47814ea594f5c3a3c5e1f579020db32808c3f4780c19244aa94698d4d4d472e"
    end
    on_arm do
      url "https://download.stackhawk.com/hawkop/cli/hawkop-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "412e9714d451327e41ba713217c98b1fe6def3a5ff54617c4acb67c1f2211427"
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
