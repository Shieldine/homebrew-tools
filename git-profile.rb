class GitProfile < Formula
  desc "Simple CLI to manage and automatically set git user profiles based on project origin"
  homepage "https://github.com/Shieldine/git-profile"
  version "1.3.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Shieldine/git-profile/releases/download/v1.3.0/git-profile_Darwin_arm64.tar.gz"
      sha256 "253779f53ba5cb0a6c6ce292cfa0ccd7acac2c2933a8547eaecdc888ca8a53b8"
    else
      url "https://github.com/Shieldine/git-profile/releases/download/v1.3.0/git-profile_Darwin_x86_64.tar.gz"
      sha256 "9a8f73331a44e8a164a70a62848033fc67adfa8d20583bd81d98e9b05269b475"
    end
  end

  def install
    bin.install "git-profile"
  end

  test do
    system "#{bin}/git-profile", "--version"
  end
end