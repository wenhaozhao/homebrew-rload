class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  license any_of: ["MIT", "Apache-2.0"]

  on_arm do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.2.4/rload-0.2.4-aarch64-apple-darwin.tar.gz"
    sha256 "8fa75521f7e2516af50e7f51a36edf695c7f8368907bb0a6d1ba251e9d5c7357"
  end

  on_intel do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.2.4/rload-0.2.4-x86_64-apple-darwin.tar.gz"
    sha256 "76d9067572708b19ef442b526111c569a1727907ff6a37d1d52002e70323d599"
  end

  on_linux do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.2.4/rload-0.2.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8c88c6dca164256d1021f1306b2044aec4b45877c4f3fc4637b8fac21960e201"
  end

  def install
    bin.install "rload"
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
  end
  