class HawkAT480 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  url "https://download.stackhawk.com/hawk/cli/hawk-4.8.0.zip"
  sha256 "3569f886f5b19e6d006ce649ee3f9bd4af8a078eb6d4e81b7e126041a67161da"
  license ""

  # This specific JDK (openjdk) is a keg_only, which mean it's not linked to the user's PATH by default.
  # https://github.com/Homebrew/homebrew-core/blob/master/Formula/o/openjdk.rb
  depends_on "openjdk@17"

  def install
    inreplace "hawk", "$(dirname $0)", "#{prefix}"
    bin.install "hawk"

    # Move the regular 'hawk' script that would be on the path to something else
    mv bin/"hawk", bin/"hawk.original"
    # Get the openjdk brew-installed path
    java_path = Formula["openjdk@17"].opt_prefix
    # Rewrite our 'hawk' entrypoint script to include the java home pointed at this java 17, and exec our original 'hawk' entry point that we moved.
    (bin/"hawk").write_env_script bin/"hawk.original", JAVA_HOME: java_path

    prefix.install Dir["./*"]
  end

  test do
    system "true"
  end
end
