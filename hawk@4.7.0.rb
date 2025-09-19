class HawkAT470 < Formula
  desc "KaaKaww! Helping developers to find, triage and fix security bugs!"
  homepage "https://www.stackhawk.com/"
  url "https://download.stackhawk.com/hawk/cli/hawk-4.7.0.zip"
  sha256 "b9b2fdd0fa208c887791fc42027d2e5d4fa99ea3018da74e468cf9fd7ec2db0f"
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
