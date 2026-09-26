{ pkgs, ... }:
{
  packages = [ pkgs.texliveFull ];

  scripts.build = {
    description = "Build the resume PDF with XeLaTeX";
    exec = ''
      mkdir -p out
      latexmk -xelatex \
        -interaction=nonstopmode \
        -halt-on-error \
        -file-line-error \
        -outdir=out \
        Joseph_Kerkhof.tex
    '';
  };
}
