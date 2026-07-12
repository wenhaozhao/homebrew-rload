class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  url "https://github.com/wenhaozhao/rload/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7380f46d311927dbacbfbcd1cf35ba76e2f8d1968b34198e92bc510a4ec30ae6"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
end
