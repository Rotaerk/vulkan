let
  projectName = "genvulkan";

  refs = import ./refs.nix;
  pkgs = import <nixpkgs> {};
  inherit (refs { inherit pkgs; }) sources sourceImports sourceOverrides relSourceOverrides;
  inherit (pkgs.haskell.lib) overrideCabal doJailbreak;

  haskellPackages =
    pkgs.haskellPackages.override {
      overrides = self: super: {
        regex = doJailbreak super.regex;
        stylish-haskell = doJailbreak super.stylish-haskell_0_9_0_2;
        hfmt = sourceOverrides.hfmt "0.2.1" super.hfmt;
        haskell-src-exts = super.haskell-src-exts_1_20_2;
        # template-haskell = super.template-haskell_2_13_0_0;
        # hfmt = doJailbreak super.hfmt;
        # hlint = doJailbreak super.hlint;
        # hindent = doJailbreak super.hindent;
      };
    };

  genvulkan =
    overrideCabal
      (haskellPackages.callCabal2nix projectName ./. {})
      (drv: {
        pname = projectName;
        src = pkgs.lib.cleanSource drv.src;
        librarySystemDepends = [ pkgs.cabal-install ];
      });
in
  { inherit genvulkan; }