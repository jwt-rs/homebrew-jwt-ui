
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.5/jwtui-macos-arm64.tar.gz"
    sha256 "7269707f6dfcacda3b092a0f67ce4c79bbbb11dc3b29d41df26617c500441c27"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.5/jwtui-macos.tar.gz"
    sha256 "6b40e0bc285e549ce411e1ab6f037c244fc999186ca6e9527ef0fc9a34655009"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.5/jwtui-linux.tar.gz"
    sha256 "cd8f0f156b6052c3da09015cd9dfd9e30c5d1c6be2bcf945c8ac900e58cc1141"
  end
  version "v1.0.5"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end