class Mcpgw < Formula
  desc "Manage MCP servers across every client and gateway their traffic"
  homepage "https://kennywillbe.github.io/mcpgw/"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "33db79a24c5433027a403d62abc2bb42524c216426f0c31808bec90353d31a87"
    end
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c1d9b28cc40b72d343ca016892c04c195fb6f756ace1a0bd18681cc2a32c53a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc0da7563fee994b57136a7ab3bc84865ef3ba430fe5db3136b69407cbcec3ea"
    end
    on_arm do
      # 0.4.1 shipped no linux arm64 build; the release bumper fills this in at the next release.
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6a8d0f25ee5cb4073368081eed3aeae9f838475df6d4c6606c7ebc528041708"
    end
  end

  def install
    bin.install "mcpgw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpgw --version")
  end
end
