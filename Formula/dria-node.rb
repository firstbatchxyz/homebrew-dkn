class DriaNode < Formula
  desc "Dria Compute Node - run AI inference on the Dria network"
  homepage "https://github.com/firstbatchxyz/dkn-compute-node"
  version "0.7.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.3/dria-node-macOS-amd64"
      sha256 "0c586117b2920e36633bec26e0a05aa7a986e78d776b726af9dffbec9a515c14"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.3/dria-node-macOS-arm64"
      sha256 "b6cf53788dd4a599ad49494b7354c7e8497d4134b1e08e3178c9d561580ad961"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.3/dria-node-linux-amd64"
      sha256 "6a0f7a9e0b101b03192f745503ba2d0600c8cc3a707f2b66794fa12f9db1d34d"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.3/dria-node-linux-arm64"
      sha256 "7b8428b69f36cd914c39e0b2fdef25282fa3c4027a1c5db66efdb3d88d353162"
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
