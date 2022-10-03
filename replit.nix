{ pkgs }: {
    deps = [
        pkgs.texinfoInteractive
        pkgs.execline.bin
        pkgs.run
        pkgs.bashInteractive
    ];
}