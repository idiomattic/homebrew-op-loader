class OpLoader < Formula
  desc "TUI for configuring 1password secrets for injection into your shell environment"
  homepage "https://github.com/idiomattic/op-loader"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/idiomattic/op-loader/releases/download/v0.5.0/op-loader-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "37fa73571dcbf4415899c5a74bcaf99c5677fc99e0b5855ed3ebf434b7989273"
    end
    if Hardware::CPU.arm?
      url "https://github.com/idiomattic/op-loader/releases/download/v0.5.0/op-loader-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "b6b8b46aa2ac24dffc07fd255b775977dec5117720ba981d6ddac00e6635bc4a"
    end
  end

  def install
    bin.install "op-loader"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-loader --version")
  end
end
