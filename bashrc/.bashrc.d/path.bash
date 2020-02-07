pathmunge () {
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    if [ "$2" = "before" ] ; then
      PATH=$1:$PATH
    else
      PATH=$PATH:$1
    fi
  fi
}

# ------miniconda-----------
# pathmunge $HOME/python/miniconda3/bin
# pathmunge $HOME/python/miniconda3/condabin
pathmunge $HOME/python/miniconda2/bin 

# -------local binaries------
pathmunge $HOME/bin
pathmunge $HOME/.local/bin

# -------root binaries-------
pathmunge /usr/local/sbin
pathmunge /usr/local/bin
pathmunge /usr/sbin
pathmunge /usr/bin

# -------snap binaries------
pathmunge /snap/bin

# ------other binaries-----
pathmunge $HOME/bin/ngs/ensembl-vep
pathmunge $HOME/.fzf/bin
pathmunge $HOME/NGS/homer/bin/
pathmunge $HOME/.local/bin/dotnet

export PATH


# -------other path changes
export LD_LIBRARY_PATH="/usr/local/lib/:$LD_LIBRARY_PATH"
