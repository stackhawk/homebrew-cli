class HawkAT240 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  url "https://download.stackhawk.com/hawk/cli/hawk-2.4.0.zip"
  sha256 "c1c3a8f5c0c7d5a3aeaedbaf9e3d752945944ecfc9d5a8f04d7c2093df6f1c27"
  license ""

  def install
    begin
      system("java", "-version")
    rescue
      puts "Java was not found in $PATH.\n\nRun \e[1mbrew install openjdk\e[0m to install java\n\nHelp: https://docs.stackhawk.com/stackhawk-cli/#prerequisites\n "
      raise "Java was not found"
    end
    inreplace "hawk", "$(dirname $0)", "#{prefix}"
    bin.install "hawk"
    prefix.install Dir["./*"]
  end

  test do
    system "true"
  end
end
