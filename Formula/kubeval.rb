class Kubeval < Formula
  desc "Validate your Kubernetes configurations"
  homepage "https://github.com/instrumenta/kubeval"
  version "0.16.1"

  if OS.mac?
    url "https://github.com/instrumenta/kubeval/releases/download/v0.16.1/kubeval-darwin-amd64.tar.gz"
    sha256 "c79a91f2e6638463881a8189e0628ebd583a5e2912e6f411897e3cea567125e7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/instrumenta/kubeval/releases/download/v0.16.1/kubeval-linux-amd64.tar.gz"
      sha256 "2d6f9bda1423b93787fa05d9e8dfce2fc1190fefbcd9d0936b9635f3f78ba790"
    end
  end

  def install
    bin.install "kubeval"
  end

  test do
    system "#{bin}/kubeval --version"
  end
end
