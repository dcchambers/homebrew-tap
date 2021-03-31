require 'formula'

class NoteKeeper < Formula
  desc "Notekeeper: A tiny bash tool for taking and organizing simple text notes."
  homepage "https://github.com/dcchambers/note-keeper"
  url "https://github.com/dcchambers/note-keeper/releases/download/v1.0/notekeeper.tar.gz"
  sha256 "81aa3376f014e25b41030f5070171d9a1b86361f94a2c74ac1989e49a1824866"
  version "1.0"
  license "MIT"

  def install
    bin.install 'note.bash' => "note"
  end

  test do
    system "#{bin}/note --help"
  end

end
