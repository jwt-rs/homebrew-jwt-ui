
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class JwtUi < Formula
  desc "A Terminal UI for decoding/encoding JSON Web Tokens"
  homepage "https://github.com/jwt-rs/jwt-ui"
  if OS.mac?
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.4/jwtui-macos.tar.gz"
    sha256 "2f5e6691b5b245d4c7720576189b4794958d58c3d72ccdeb50f171186018dec6"
  else
    url "https://github.com/jwt-rs/jwt-ui/releases/download/v1.0.4/jwtui-linux.tar.gz"
    sha256 "4e09b0feb94a4ca4a1ab41347f88608fb12d43b7480fd4a0eae63ed14ce3555b"
  end
  version "v1.0.4"
  license "MIT"

  def install
    bin.install "jwtui"
    ohai "You're done!  Run with \"jwtui\""
    ohai "For runtime flags, see \"jwtui --help\""
  end
end