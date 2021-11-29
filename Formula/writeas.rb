class Writeas < Formula
  desc "Command line utility for publishing to Write.as."
  homepage "https://github.com/writeas/writeas-cli"
  version "2.0.0"

  if OS.mac?
    url "https://github.com/writeas/writeas-cli/releases/download/v2.0.0/writeas_2.0.0_darwin_amd64.zip"
    sha256 "86aefc62076944d3062fb31829cd58244127d7641b98c192ec728becc21d7d64"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/writeas/writeas-cli/releases/download/v2.0.0/writeas_2.0.0_linux_amd64.tar.gz"
      sha256 "994ff7ff23e0ed771fb3457775d11ad98c13116cbfa0898175486300589a35e1"
    end
  end

  def install
    bin.install "writeas"
  end

  test do
    system "#{bin}/writeas help"
  end
end
