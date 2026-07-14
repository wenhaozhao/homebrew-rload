class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  url "https://github.com/wenhaozhao/rload/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "061a8db7ffdc64f17c5c5c573a6c1ca088b1f2ff68e6fdabbb2bb79d0280ceac"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
end
