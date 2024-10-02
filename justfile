default:
  echo "for all: just all"
  echo "for nixos: just nixos"
  echo "for home-manager: just home"

nixos:
  sudo nixos-rebuild switch --flake .

home:
  home-manager switch --flake .

all: nixos home
