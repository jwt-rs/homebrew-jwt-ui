
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v0.0.4/jwtui-macos.tar.gz"
    sha256 "1fc881f8cf265bc4ac84af7a14484bf6a6dc658d72e127f0e85a9bbdb356bd8b"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v0.0.4/jwtui-linux.tar.gz"
    sha256 "4337dcaef391e953cee021fd60b07929635b77c11667f91c1c078cfcb2f2e0d1"
  end
  version "v0.0.4"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end