# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class jwtui < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/0.0.1/jwtui-macos.tar.gz"
    sha256 "$hash_mac"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/0.0.1/jwtui-linux.tar.gz"
    sha256 "$hash_linux"
  end
  version "0.0.1"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end