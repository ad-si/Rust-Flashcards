{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      utils,
    }:
    let
      supportedSystems = [
        "x86_64-darwin"
        "x86_64-linux"
      ];
    in
    utils.lib.eachSystem supportedSystems (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        version = "0.0.0.6";
        releasesUrl = "https://github.com/kamalsacranie/anki-panky/releases";
        src =
          if system == "x86_64-darwin" then
            pkgs.fetchzip {
              url = "${releasesUrl}/download/${version}/macOS-11-anki-panky-${version}.tar.gz";
              sha256 = "7kkfdx1vndheb63+m2HOLXo0wOYX4iReh9c7Ps/KYQk=";
            }
          else
            pkgs.fetchzip {
              url = "${releasesUrl}/download/${version}/ubuntu-latest-anki-panky-${version}.tar.gz";
              sha256 = "k5DQUI2JLVujkV2aZObAPn43m9QZ+aXPJwXpUKDuEDo=";
            };
        ankiPanky = pkgs.stdenv.mkDerivation {
          name = "anki-panky";
          inherit src version;
          installPhase = ''
            mkdir -p $out/bin
            cp -R $src/anki-panky $out/bin/anki-panky
            chmod +x $out/bin/anki-panky
          '';
        };
        fonts = pkgs.nerdfonts.override { fonts = [ "Hasklig" ]; };
      in
      with pkgs;
      {
        devShells.default = mkShell {
          nativeBuildInputs = [ fonts ];

          buildInputs = [
            ankiPanky
            pandoc
            tectonic
          ];

          # Add necessary library dependencies
          LD_LIBRARY_PATH = "${lib.makeLibraryPath [
            gmp
            zlib
          ]}";
        };
      }
    );
}
