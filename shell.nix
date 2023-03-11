let
    bem = pin.bem {};
    dvg-git = pin.dvg-git {};
    fetch-hash = pin.fetch-hash {};
    miso = pin.miso {};
    miso-bem = pin.miso-bem {};
    pin = import ./chr/pin.nix;
    traverse = pin.traverse {};
in
{
    ms ? miso,
}
:
ms.pkgs.mkShell
    {
        buildInputs = [dvg-git fetch-hash traverse];
    }
