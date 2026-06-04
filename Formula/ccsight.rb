class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.2.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.4/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "a10f93ef03bb6584b1f3c4b5abc735604771574066584d0b89d28cc727f5ddee"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.4/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "2f518e5a245e0df97b95007542bd3a51748bb515ec1fc40cf4ba34df6218da49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.4/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e878732158b3de3b0ed20ffbd3fefd5ff810f3dc29967b194b3ad132b3ca36f"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.4/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c98849eb724adf9f37374274c090a56b8419bd0fdca02257382196fd963219b1"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
