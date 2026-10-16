{
  description = "Automata and Formal Languages - Course Reports";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          texliveFull
        ];

        # Nixによる時刻の固定化を解除（\todayを使用可能にする）
        shellHook = ''
          unset SOURCE_DATE_EPOCH
        '';
      };
    };
}
