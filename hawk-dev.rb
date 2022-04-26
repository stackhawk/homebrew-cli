class HawkDev < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  url "https://download.test.stackhawk.com/hawk/cli/hawk-2.3.1.zip"
  sha256 "9674ffb912057d85c4529ba763c86007f73e40d03e5ee047cb61687ffef18fec"
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
