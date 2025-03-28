require 'formula'

class Notekeeper < Formula
  desc "Notekeeper: A tiny bash tool for taking and organizing simple text notes."
  homepage "https://github.com/dcchambers/note-keeper"
  url "https://github.com/dcchambers/note-keeper/releases/download/v1.3/notekeeper-1.3.tar.gz"
  sha256 "7d5111c90c0c565f7608f9075cd7ebe51bd987eb388a2ea2cd8156cfa8b03571"
  version "1.3"
  license "MIT"

  def install
    bin.install 'note.bash' => "note"
  end

  test do
    system "#{bin}/note --help"
  end

end
