require 'formula'

class Notekeeper < Formula
  desc "Notekeeper: A tiny bash tool for taking and organizing simple text notes."
  homepage "https://github.com/dcchambers/note-keeper"
  url "https://github.com/dcchambers/note-keeper/releases/download/v1.2/notekeeper.tar.gz"
  sha256 "5d2006b904d7bfae573019111d9f417087cd7956ce6f98353b5ceee1ad7344cb"
  version "1.2"
  license "MIT"

  def install
    bin.install 'note.bash' => "note"
  end

  test do
    system "#{bin}/note --help"
  end

end
