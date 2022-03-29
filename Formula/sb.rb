# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Sb < Formula
  VERSION = "v0.6.0".freeze
  $name = ""
  desc "A CLI to generate SSH Certificates after verifying your identity via Slack."
  homepage "https://github.com/sparkbox/sb"
  bottle :unneeded

  if OS.mac?
    if Hardware::CPU.arm?
      $name ="arm64-darwin-sb"
      url "https://github.com/sparkbox/sb/releases/download/#{VERSION}/#{$name}.dmg"
      sha256 "8511a478774a480d7d7d1d413077461f2f39f75ea7c4b18e19aab8d306d4f26d"
    else
      $name ="amd64-darwin-sb"
      url "https://github.com/sparkbox/sb/releases/download/#{VERSION}/#{$name}.dmg"
      sha256 "d179d3f852f45c0109b35c053867716093b3cc6579cf953492e88693f885403b"
    end
  end

  def install
    bin.install "#{$name}" => "sb"
  end

end
