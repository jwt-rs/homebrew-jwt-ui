
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.0/jwtui-macos.tar.gz"
    sha256 "2a54afd93927f8b25762b2a18ff8295a34a3ca900d5c2913e747117262cde673"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.0/jwtui-linux.tar.gz"
    sha256 "7e8c67a0dc94b15e659389e899975dbb9cff1f6a13aa1d0e9a7f78e9b72a4d93"
  end
  version "v1.0.0"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end