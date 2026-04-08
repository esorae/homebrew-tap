class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.0.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.2/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "00394a4bfd0f3136bd1274cde7e08635b8b625e2bdc34de4fff01f7c17337b6a"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.2/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "feb62cd7bd21696a9d93e93ee48a0ded57961f715990c690622ec2acf875b324"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.2/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b00c2d3cf9e5fb78337ce2b1f60f8700ff3a77f563df88c1609f5eca3826afe6"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.2/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3aade1be15eb32c1b567f70a5d9a8a734b50595e5dffdfa65ffaf4882caafe28"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
