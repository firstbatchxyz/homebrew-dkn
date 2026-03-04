class DriaNode < Formula
  desc "Dria Compute Node - run AI inference on the Dria network"
  homepage "https://github.com/firstbatchxyz/dkn-compute-node"
  version "1.0.0-alpha.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v1.0.0-alpha.2/dria-node-macOS-amd64"
      sha256 "e772893333e5cb9a283f3660e866c0369562117e8db1eaa1f50fc1adf780da8c"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v1.0.0-alpha.2/dria-node-macOS-arm64"
      sha256 "4ddabbab0c701af2c0a738696867e43693a9a90b3e7b0a86b0ee6df19c8ec623"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v1.0.0-alpha.2/dria-node-linux-amd64"
      sha256 "b533fde8aeb08c6fd778264c1fb4f71adbf39b283fa41d4a30bcfee9a06f2743"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v1.0.0-alpha.2/dria-node-linux-arm64"
      sha256 "eff5661d4158a017a4ccbab60b340d5cf2c029661269f958e66e3f0a92c7be5d"
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
