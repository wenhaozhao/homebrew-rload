class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  license any_of: ["MIT", "Apache-2.0"]

  on_arm do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.3.0-rc.1/rload-0.3.0-rc.1-aarch64-apple-darwin.tar.gz"
    sha256 "6e91039d1aa46bed95888ad8a6f9eddd1a02fb58f7c5088ff5c6cdd7dd2b6617"
  end

  on_intel do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.3.0-rc.1/rload-0.3.0-rc.1-x86_64-apple-darwin.tar.gz"
    sha256 "cd0ad7859056f6987de2a9780caa28d026057df3fa39b6d79a0ef1b0ea2867f4"
  end

  on_linux do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.3.0-rc.1/rload-0.3.0-rc.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "28d650b6a8b22a58680b8bfa81ed2ab301eac93a452bd0fcf9c26f42d427a30b"
  end

  def install
    bin.install "rload"
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
  end
  