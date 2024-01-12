
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.1/jwtui-macos.tar.gz"
    sha256 "fd900e9f0079e27441ebcd36e8a3be3d74e3f6413ea1e7c19cabff0af23d0971"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.1/jwtui-linux.tar.gz"
    sha256 "fadde914e815c1cb9c7ac5b3d6f4ba7ae4241f3aa0ad632a9f1f563fb452926f"
  end
  version "v1.0.1"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end