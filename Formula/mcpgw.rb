class Mcpgw < Formula
  desc "Manage MCP servers across every client and gateway their traffic"
  homepage "https://kennywillbe.github.io/mcpgw/"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9686950a3d529da85b689ee63f0f7fcc46e93889ecba1b39ba4c790fd3229ce4"
    end
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "414fecb3c0873870c70c3f94344ba30830f9b3e2cf4e7a3bf973f1c1c828a630"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6361a82b6af2b63e7df7c9430f58dbf632e4a193c562139173900330a9e77317"
    end
  end

  def install
    bin.install "mcpgw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpgw --version")
  end
end
