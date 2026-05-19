{
  description = "CSE 110 Lab 7 - Jest + Puppeteer dev environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [ pkgs.nodejs_22 ];

          shellHook = ''
            export PUPPETEER_CACHE_DIR="$PWD/.puppeteer-cache"
            echo "node $(node --version)  npm $(npm --version)"
            if [ ! -d node_modules ]; then
              echo "Running npm install..."
              npm install
              npx puppeteer browsers install chrome
            elif [ ! -d "$PUPPETEER_CACHE_DIR/chrome" ]; then
              echo "Installing Chromium for puppeteer..."
              npx puppeteer browsers install chrome
            fi
          '';
        };
      }
    );
}
