{ stdenv }:

stdenv.mkDerivation rec {
  name = "example-package-${version}";
  version = "1.0";
  src = ./.;
  buildPhase = "echo Hello World >> example\ 
                echo out = $out >> example\
                echo name = $name >> example\
                echo TEMP = $TEMP >> example";
  installPhase = "install -Dm755 example $out";
}
