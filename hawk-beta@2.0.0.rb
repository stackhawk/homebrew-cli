class HawkBetaAT200 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  url "https://download.stackhawk.com/hawk/cli/hawk-2.0.0-beta.zip"
  sha256 "bcaa4391cd1ad3c03286da00576fd691d24e6f9e0cbc10fa7a364d8b33f70c98"
  license ""

  def install
    system "java", "--version"
    inreplace "hawk", "$(dirname $0)", "#{prefix}"
    bin.install "hawk"
    prefix.install Dir["./*"]
  end

  test do
    system "true"
  end
end
