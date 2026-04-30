class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.1/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "40c059654735d1ee1979b03429aa032589a407981c112b7e516a81e3ca6fad76"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.1/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "bef45e6a0be330eb93e5a63e31c62b1906b0bb2db31a254a1884a35229e897b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.1/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ef5f805cdbe4946912aed774a54efe2e35ebae042efad55701ab333da9468cb"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.1/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d3a37b246691f717dd0494a9909381e2d8417609badf7b645081e44e3977653"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
