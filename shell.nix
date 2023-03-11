let
    bem = pin.bem {};
    dvg-git = pin.dvg-git {};
    fetch-hash = pin.fetch-hash {};
    miso = pin.miso {};
    miso-bem = pin.miso-bem {};
    pin = import ./chr/pin.nix;
    traverse = pin.traverse {};
    nixpkgs = pin.nixpkgs {};
in
{
    ms ? miso,
    pkgs ? nixpkgs,
}
:
ms.pkgs.mkShell
    {
        buildInputs
            =
            [
                dvg-git
                fetch-hash
                traverse
                (ms.pkgs.writeShellScriptBin
                     "watch"
                     (ms.pkgs.lib.readFile ./scr/watch.sh)
                )
                pkgs.ghcid
            ];
    }
