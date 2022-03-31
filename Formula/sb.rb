# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Sb < Formula
  VERSION = "v0.7.0".freeze
  $name = ""
  desc "A CLI to generate SSH Certificates after verifying your identity via Slack."
  homepage "https://github.com/sparkbox/sb"

  if OS.mac?
    if Hardware::CPU.arm?
      $name ="arm64-darwin-sb"
      url "https://github.com/sparkbox/sb/releases/download/#{VERSION}/#{$name}.dmg"
      sha256 "438fce1383cb77a51d64bc3b0e2f1eee957600108bf371fc87202e66672f2a33"
    else
      $name ="amd64-darwin-sb"
      url "https://github.com/sparkbox/sb/releases/download/#{VERSION}/#{$name}.dmg"
      sha256 "9a9078b5627ddbbec20bb5c3fa450736f0f0d198b0d035e23c64b82273cad41b"
    end
  end

  def install
    bin.install "#{$name}" => "sb"
  end

end
