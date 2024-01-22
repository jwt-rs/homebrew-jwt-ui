
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.1.0/jwtui-macos-arm64.tar.gz"
    sha256 "d550621c7b91fc806fc254404a1045ee89e81abde97fdee0bcdfe970acace3a3"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.1.0/jwtui-macos.tar.gz"
    sha256 "53b7f64c9a3bf1f50eb58bbb9695eaa0fb962dcc5062dae3629c9fa579def0f4"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.1.0/jwtui-linux-musl.tar.gz"
    sha256 "cfb1010d5fe74a282d2795aeb69e94cbf2d32a5c7e442c71788370120953a059"
  end
  version "v1.1.0"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end