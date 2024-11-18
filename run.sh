#!/bin/sh

default() {
  echo "\
    Usage: ./run <choice>
      - for clear everything:
      ./run.sh clear

      - for update flake:
      ./run.sh update

      - for all: 
      ./run.sh all

      - for just nixos configuration update: 
      ./run.sh nixos

      - for just home-manager configuration: 
      ./run.sh home"
    }

    nixos() {
      echo "Running nixos configuration..."
      sudo nixos-rebuild switch --flake .;
    }

    home() {
      echo "Running home-manager configuration..."
      home-manager switch --flake .;
    }

    update() {
      sudo nix flake update;
    }

    clear() {
      nix-collect-garbage && \
        sudo nix-collect-garbage && \
        nix-collect-garbage -d && \
        sudo nix-collect-garbage -d;
      }

      main() {
        case "$1" in
          "nixos")
            nixos ;;

          "home")
            home ;;

          "all")
            nixos && home ;;  # Only runs home if nixos succeeds

          "update")
            update ;;

          "clear")
            clear ;;

          *)
            default ;;
        esac
      }

      if [ -z "$1" ]; then
        default
      else
        main "$1"
      fi
