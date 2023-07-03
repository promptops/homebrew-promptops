class PromptopsCli < Formula
  include Language::Python::Virtualenv
  desc "Your CLI assistant. Ask questions, get shell commands"
  homepage "https://promptops.com"
  url "https://files.pythonhosted.org/packages/27/67/1930a10fe9d54339d023522da091b7728a79dfb3817d9ec538e32289d4e2/promptops-0.1.11.tar.gz"
  sha256 "f22c81088dbbacac0e74c69abb6caf61b3d645217ec42f325dbeda087e8cd38e"
  license ""

  bottle do
    root_url "https://github.com/promptops/homebrew-promptops/releases/download/promptops-cli-0.1.10"
    sha256 cellar: :any_skip_relocation, ventura:      "48b76e671c2bf6deccdfb0a2df727765e65dabe3f78e129663a5bb704db584e0"
    sha256 cellar: :any_skip_relocation, monterey:     "00aab27fd80d5f8335b6a09e228ba1b223911553afa6fb2d6b246a91622935d3"
    sha256 cellar: :any_skip_relocation, big_sur:      "eb4fd9f94649933d0859100ddefd45fc4ec0b6fd3ac7d201f52accb51d7d9452"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ca07edc03f37359a5e8cee581d8845d562ded931c8274c2f754bd491e603b01d"
  end

  depends_on "numpy@1.25"
  depends_on "python@3.10"
  depends_on "pyyaml"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  # requests dependency
  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/21/79/6372d8c0d0641b4072889f3ff84f279b738cd8595b64c8e0496d4e848122/urllib3-1.26.15.tar.gz"
    sha256 "8a388717b9476f934a21484e8c8e61875ab60644d29b9b39e11e4b9dc1c6b305"
  end

  # requests dependency
  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/ff/d7/8d757f8bd45be079d76309248845a04f09619a7b17d6dfc8c9ff6433cac2/charset-normalizer-3.1.0.tar.gz"
    sha256 "34e0a2f9c370eb95597aae63bf85eb5e96826d81e3dcf88b8886012906f509b5"
  end

  # requests dependency
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/37/f7/2b1b0ec44fdc30a3d31dfebe52226be9ddc40cd6c0f34ffc8923ba423b69/certifi-2022.12.7.tar.gz"
    sha256 "35824b4c3a97115964b408844d64aa14db1cc518f6562e8d7261699d1350a9e3"
  end

  # requests dependency
  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/d8/3b/2ed38e52eed4cf277f9df5f0463a99199a04d9e29c9e227cfafa57bd3993/websockets-11.0.3.tar.gz"
    sha256 "88fc51d9a26b10fc331be344f1781224a375b78488fc343620184e95a4b27016"
  end

  resource "detect-secrets" do
    url "https://files.pythonhosted.org/packages/f1/55/292f9ce52bba7f3df0a9cde65dabf458d3aeec6a63bf737e5a5fa9fe6d31/detect_secrets-1.4.0.tar.gz"
    sha256 "d56787e339758cef48c9ccd6692f7a094b9963c979c9813580b0169e41132833"
  end

  # detect-secrets dependency
  # resource "PyYAML" do
  #   url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
  #   sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
  # end

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
