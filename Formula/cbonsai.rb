class Cbonsai < Formula
  desc "Bonsai tree generator for your terminal."
  homepage "https://gitlab.com/jallbrit/cbonsai"
  url "https://gitlab.com/jallbrit/cbonsai/-/archive/v1.3.1/cbonsai-v1.3.1.tar.gz"
  sha256 "62aa7e0eaf3098b7a6a2787146bd2531437df6ad0e604b0f9176128797efd8f9"
  license "GNU GPL v3.0"
  version "1.3.1"

  depends_on "ncurses"
  depends_on "scdoc" => :install
  # depends_on "cmake" => :install

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
