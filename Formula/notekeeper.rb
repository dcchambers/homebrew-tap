require 'formula'

class Notekeeper < Formula
  desc "Notekeeper: A tiny bash tool for taking and organizing simple text notes."
  homepage "https://github.com/dcchambers/note-keeper"
  url "https://github.com/dcchambers/note-keeper/releases/download/v1.1/notekeeper.tar.gz"
  sha256 "6454637dcc985bbaebae4ac7c0fb35b6b057f796b67439fa89bb6c4d7b4c26e5"
  version "1.1"
  license "MIT"

  def install
    bin.install 'note.bash' => "note"
  end

  test do
    system "#{bin}/note --help"
  end

end
