# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserPro < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.166.0-pro"
  license "Copyright Becker Software LTDA"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/goreleaser/goreleaser-pro/releases/download/v0.166.0-pro/goreleaser-pro_Darwin_x86_64.tar.gz"
    sha256 "8cb2bd32de1bfcb04469af6d3bd87bff2135910351af3ec646b8dbba08ded705"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/goreleaser/goreleaser-pro/releases/download/v0.166.0-pro/goreleaser-pro_Darwin_arm64.tar.gz"
    sha256 "ff0fa0b88ec827a4776511b20ea75e033e6fc514be36188fa3101d54f2f2969f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/goreleaser/goreleaser-pro/releases/download/v0.166.0-pro/goreleaser-pro_Linux_x86_64.tar.gz"
    sha256 "f94cf1b026b00adf4dd1bbe6d098d4f2a0049d7bc827ed2cc495d3a0767f6cd5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/goreleaser/goreleaser-pro/releases/download/v0.166.0-pro/goreleaser-pro_Linux_armv6.tar.gz"
    sha256 "aafc81ccb5c903eac3f5358c4ff285fd6c2a2aee68cf2b659cb36e9221d5c08b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/goreleaser/goreleaser-pro/releases/download/v0.166.0-pro/goreleaser-pro_Linux_arm64.tar.gz"
    sha256 "c27b322f2b7c4ca60483609f7433fe608e68543f7a2059d60b2c5b61cbe204b0"
  end

  depends_on "go" => :optional

  conflicts_with "goreleaser"

  def install
    bin.install "goreleaser"
    bash_completion.install "completions/goreleaser.bash" => "goreleaser"
    zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
    fish_completion.install "completions/goreleaser.fish"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end