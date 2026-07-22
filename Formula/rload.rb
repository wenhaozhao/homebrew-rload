class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  license any_of: ["MIT", "Apache-2.0"]

  on_arm do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.3.1/rload-0.3.1-aarch64-apple-darwin.tar.gz"
    sha256 "1720907fdb1772106c01c6304c4f60c238bcf2c7cbfeedd24ef678745bb3695f"
  end

  on_intel do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.3.1/rload-0.3.1-x86_64-apple-darwin.tar.gz"
    sha256 "e4d2e82ef0ae1c874dc89ffe781d7be75f4183ea0bd8d9f1332a90f669851690"
  end

  on_linux do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.3.1/rload-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "13fb152243bbce1656fd97aa4bfdf3f241a8ea18d1b32f97369223056685d0cd"
  end

  def install
    bin.install "rload"
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
  end
  