class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.2.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.8/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "f4caeadf1a509b2093785f13ae836a54c59217da6fbabead719496d679961271"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.8/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "dd816ba98f06e788aeb0478af045aa5ced57ee6edb17716caa6507a04309e7b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.8/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1034c30adb617ca5de2a57ca64fa69ecc80b8b808d447ff33a6cf175d5e10154"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.8/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96e535e9c18a7807e6b0d3b1c88045bbb0f80b5cedc02c87943a0bb7a3152d15"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
