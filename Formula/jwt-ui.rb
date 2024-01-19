
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.6/jwtui-macos-arm64.tar.gz"
    sha256 "896a9e7f2330c40f2f2d96aa8304e6df3353e87515f60bfebc61c43655a35704"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.6/jwtui-macos.tar.gz"
    sha256 "979fd97786abd43bb13391216f70e30da66ee542d8c12f1be945d5717f6ed01f"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.6/jwtui-linux.tar.gz"
    sha256 "9579c9b101cf19c6eda70ec0f40387854ae341148551686229e8bd478f656599"
  end
  version "v1.0.6"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end