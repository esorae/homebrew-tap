class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.2.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.6/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "32e4e86556e0cc3353e1a3d5709ed4ae30cae8c84e95a14b421959a2965b8055"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.6/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "cec16a21755a0968667ed02a9df32ffde8fde0cc497ed7e829a7792fc7feb1a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.6/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c45a539dacedd7190472ab066a35cb8110cfac8e0642ebfae9f0f3079e90851"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.6/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3027de09a86466c850b463fac8899eab37f93816657c1232df4d3115b2f8542"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
