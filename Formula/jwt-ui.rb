
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.2/jwtui-macos.tar.gz"
    sha256 "af4319baec786612fd192b792871fa31bf33cca7853ef8ca674c3a899d93d89f"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.2/jwtui-linux.tar.gz"
    sha256 "51acac7e7df863a5927bfdcdb2b72bb23f0bdbc33e63f544843fcaa2e29d402b"
  end
  version "v1.0.2"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end