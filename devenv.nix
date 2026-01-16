{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [
    pkgs.pipx
  ];

  # https://devenv.sh/languages/
  languages = {
    python.enable = true;
  };

  # https://devenv.sh/basics/
  enterShell = ''
    if ! command -v zmk &> /dev/null; then
      echo "Installing zmk via pipx..."
      pipx install zmk
    fi
  '';

  scripts.hello.exec = ''
    echo hello from $GREET
  '';
}
