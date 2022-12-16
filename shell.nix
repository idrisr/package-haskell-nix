let pkgs = import <nixpkgs> { };
in with pkgs;
mkShell {
  buildInputs = [
    (ghc.withPackages (p:
      with p; [
        # mtl
        MemoTrie
        # containers
        pretty-show

      ]))
  ];

  shellHook = ''
    set -o vi
  '';
}

# nix-shell --packages 'ghc.withPackages (pkgs: [ pkgs.mtl pkgs.MemoTrie pkgs.containers pkgs.pretty-show ])'
