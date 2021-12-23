class HawkBetaAT200 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  url "https://download.stackhawk.com/hawk/cli/hawk-2.0.0-beta.zip"
  sha256 "0c95243c3bf58ec71ca407d89a4c8dd3cf27ad25bc3651a6d978283732573892"
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
