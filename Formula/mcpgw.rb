class Mcpgw < Formula
  desc "Manage MCP servers across every client and gateway their traffic"
  homepage "https://kennywillbe.github.io/mcpgw/"
  version "0.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cab7684077464a7c4b40867039679c54fa89d047f4480a43b18fcf2a2c085cdb"
    end
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fdfa89c74c327a54f4442a8df39975875a6738c748465dfa1ca677b9ccd52bdc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c493baeff9e052cda78ee6a9d346927453f2c3f31b8d00bfc2861653a1ffd5a"
    end
  end

  def install
    bin.install "mcpgw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpgw --version")
  end
end
