let 
  sources = import ./sources.nix;
  pkgs = import sources.nixpkgs {};
  src = sources.website;
in
with pkgs;
{
  website = stdenv.mkDerivation {
  name = "fiedka-website";
  src = src;
  # Add the derivation to the PATH
  installPhase = ''
  mkdir -p $out
  cp * $out/
  '';
};
}
