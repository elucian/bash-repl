{ pkgs }: {
    deps = [
        pkgs.1+1
        pkgs.hpx
        pkgs.texinfoInteractive
        pkgs.execline.bin
        pkgs.run
        pkgs.bashInteractive
    ];
}