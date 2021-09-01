with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "fiedka-website";
  src = fetchFromGitHub {
      owner = "fiedka";
      repo = "website";
      rev = "3c13a6e03008ab1570e6cfd77e1c0aed95c2d4dd";
      sha256 = "0nhkx3238fbjawi48x2k64gyrbay36f8cw4pl2ix54ci5ks0amf9";
  };
  # Add the derivation to the PATH
  installPhase = ''
  mkdir -p $out
  cp index.html $out/
  '';
}