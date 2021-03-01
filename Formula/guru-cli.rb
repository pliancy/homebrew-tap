require "language/node"

class GuruCli < Formula
  desc "CLI tools for Guru KB (getguru.com)"
  homepage "https://github.com/pliancy/guru-cli#readme"
  url "https://registry.npmjs.org/guru-cli/-/guru-cli-0.1.0.tgz"
  sha256 "1cc3286fb6bdf21cb27c4f62d08fe8747ac7017214dbc35f6925d7eeb0ff1a86"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
