class HawkDevAT241 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  url "https://download.test.stackhawk.com/hawk/cli/hawk-2.4.1.zip"
  sha256 "3cfe0d74b529be1a8253b1c3f0cd2f4ef253f6ad2fcfe9ba80e3f115d5766821"
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
