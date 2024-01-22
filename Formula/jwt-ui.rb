
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.7/jwtui-macos-arm64.tar.gz"
    sha256 "ab7bf58d7bb0114ce54c5132002f25adf1534858454acddfbaa4feb4f0273593"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.7/jwtui-macos.tar.gz"
    sha256 "fa82c06af33a04609a73f04cc34f5175236ffcd2aa8c52f8695dd53d57373bb1"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.7/jwtui-linux.tar.gz"
    sha256 "67c8282e0514e86b18d736fd94b940e77ebada780a9da9d9990ae5ac38da3f02"
  end
  version "v1.0.7"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end