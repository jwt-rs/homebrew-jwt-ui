
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.2.0/jwtui-macos-arm64.tar.gz"
    sha256 "bbbfa5f23a5e52ea6c464ad57452fc5616f19114439f9c776c4dee67f0f1da27"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.2.0/jwtui-macos.tar.gz"
    sha256 "cf3c59738da2b6ad867666254f36f0294468af40ae96648d2d80f35f4e1c8d0b"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.2.0/jwtui-linux-musl.tar.gz"
    sha256 "5aab9dab5ba9e68efd5399bd613c4dbf69078aaa3ff6cdc1618a9f1ce2cd9982"
  end
  version "v1.2.0"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end