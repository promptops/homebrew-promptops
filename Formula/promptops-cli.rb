class PromptopsCli < Formula
  include Language::Python::Virtualenv
  desc "Your CLI assistant. Ask questions, get shell commands"
  homepage "https://promptops.com"
  url "https://files.pythonhosted.org/packages/f0/78/17e4081e8713ead51588f32a49e2f788852e6704dbdf300f9c5642a4e5c0/promptops-0.1.9.tar.gz"
  sha256 "8aa25c35326a0e1552e355d109d95f0417239ca83c86959d4555393abb94416b"
  license ""

  bottle do
    root_url "https://github.com/promptops/homebrew-promptops/releases/download/promptops-cli-0.1.7"
    rebuild 1
    sha256 cellar: :any_skip_relocation, ventura:  "59f25939a8292409daf65d73ddb05ea1546222b430f10c4655f2fe661355a3f5"
    sha256 cellar: :any_skip_relocation, monterey: "921a0ee87af5e807581be91b7896bf22d654e1c14d3cc0ec52e7a00f33cdccfd"
    sha256 cellar: :any_skip_relocation, big_sur:  "dcf84f8220a7214d3b75fff740f6d644a5bdc8d9d2b0c4aabb8e0b75a1b6cdf9"
  end

  depends_on "numpy@1.25"
  depends_on "python@3.10"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/d8/3b/2ed38e52eed4cf277f9df5f0463a99199a04d9e29c9e227cfafa57bd3993/websockets-11.0.3.tar.gz"
    sha256 "88fc51d9a26b10fc331be344f1781224a375b78488fc343620184e95a4b27016"
  end

  resource "detect-secrets" do
    url "https://files.pythonhosted.org/packages/f1/55/292f9ce52bba7f3df0a9cde65dabf458d3aeec6a63bf737e5a5fa9fe6d31/detect_secrets-1.4.0.tar.gz"
    sha256 "d56787e339758cef48c9ccd6692f7a094b9963c979c9813580b0169e41132833"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/4b/bb/75cdcd356f57d17b295aba121494c2333d26bfff1a837e6199b8b83c415a/prompt_toolkit-3.0.38.tar.gz"
    sha256 "23ac5d50538a9a38c8bde05fecb47d0b403ecd0662857a86f886f798563d5b9b"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/a7/2c/4c64579f847bd5d539803c8b909e54ba087a79d01bb3aba433a95879a6c5/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end

  resource "thefuzz" do
    url "https://files.pythonhosted.org/packages/d2/bd/aecf6079c3843cfff370d37138d4f0b36ffdffa94549c20e6d74eda799f9/thefuzz-0.19.0.tar.gz"
    sha256 "6f7126db2f2c8a54212b05e3a740e45f4291c497d75d20751728f635bb74aa3d"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/d6/0f/96b7309212a926c1448366e9ce69b081ea79d63265bde33f11cc9cfc2c07/psutil-5.9.5.tar.gz"
    sha256 "5410638e4df39c54d957fc51ce03048acd8e6d60abc0f5107af51e5fb566eb3c"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/promptops", "--version"
  end
end
