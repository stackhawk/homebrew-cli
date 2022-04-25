class HawkDev < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  url "https://download.test.stackhawk.com/hawk/cli/hawk-2.3.1.zip"
  sha256 "b92a2b3349cac92618dbdc7d0008464b80c749f6b4739ba991554885128818b1"
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
