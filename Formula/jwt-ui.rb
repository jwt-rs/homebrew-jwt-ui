
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.3.0/jwtui-macos-arm64.tar.gz"
    sha256 "bcaac446c5d2932914bfcc11054e2de2aff84c2c58b490b0192b2d58645381d1"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.3.0/jwtui-macos.tar.gz"
    sha256 "635ffbb2808140e54fef3d35e21d15538b5258d7a6e32956c106114f2c4aa199"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.3.0/jwtui-linux-musl.tar.gz"
    sha256 "1db0c9937913a2c38edcdd94cfb2e1a0079609723240ee2e0255bd4a06e90c9c"
  end
  version "v1.3.0"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end