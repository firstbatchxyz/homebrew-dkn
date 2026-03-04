class DriaNode < Formula
  desc "Dria Compute Node - run AI inference on the Dria network"
  homepage "https://github.com/firstbatchxyz/dkn-compute-node"
  version "1.0.0-alpha.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v#{version}/dria-node-macOS-amd64"
      sha256 "PLACEHOLDER"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v#{version}/dria-node-macOS-arm64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v#{version}/dria-node-linux-amd64"
      sha256 "PLACEHOLDER"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v#{version}/dria-node-linux-arm64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary = Dir.glob("dria-node*").first
    bin.install binary => "dria-node"
  end

  test do
    assert_match "dria-node", shell_output("#{bin}/dria-node --version")
  end
end
