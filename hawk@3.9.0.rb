class HawkAT390 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  url "https://download.stackhawk.com/hawk/cli/hawk-3.9.0.zip"
  sha256 "766ef82641757632a96da03b87497c4e753161e478f1688151038353c5fd78bc"
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
