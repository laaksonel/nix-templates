{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    {
      templates = {
        trivial = {
          path = ./template/trivial;
          description = ''
            A minimal flake using flake-utils.
          '';
        };
      };

      defaultTemplate = self.templates.trivial;
    };
}
