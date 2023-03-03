# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Sb < Formula
  VERSION = "v0.8.0".freeze
  $name = ""
  desc "A CLI to generate SSH Certificates after verifying your identity via Slack."
  homepage "https://github.com/sparkbox/sb"

  if OS.mac?
    if Hardware::CPU.arm?
      $name ="arm64-darwin-sb"
      url "https://github.com/sparkbox/sb/releases/download/#{VERSION}/#{$name}.dmg"
      sha256 "63b15309ecbbafe535e657d61583d0864614a77960a0b729bdba32d80fa33c66"
    else
      $name ="amd64-darwin-sb"
      url "https://github.com/sparkbox/sb/releases/download/#{VERSION}/#{$name}.dmg"
      sha256 "1f8068d66ea52d38f73d27c3b16734a2e24c158adfc743856ee075aafd825777"
    end
  end

  def install
    bin.install "#{$name}" => "sb"
  end

end
