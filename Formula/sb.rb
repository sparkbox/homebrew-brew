# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Sb < Formula
  VERSION = "v0.5.0".freeze
  $name = ""
  desc "A CLI to generate SSH Certificates after verifying your identity via Slack."
  homepage ""
  bottle :unneeded

  if OS.mac?
    if Hardware::CPU.arm?
      $name ="arm64-darwin-sb"
      url "https://github.com/sparkbox/sb/releases/download/#{VERSION}/#{$name}.dmg"
      sha256 "0b2c907d906be290e7c6693f62b6619d65a7ccec38b3ad51e6542c19d5a55251"
    else
      $name ="amd64-darwin-sb"
      url "https://github.com/sparkbox/sb/releases/download/#{VERSION}/#{$name}.dmg"
      sha256 "5060996c23f9e20151f70020ebb0410fe26bf4f3919eca88f4478e6b0cad0dcd"
    end
  end

  def install
    system "mv #{$name} sb"
    bin.install "sb"
  end

end
