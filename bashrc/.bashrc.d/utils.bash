# Allow for a lazygit
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

# A function to automatically extract files
function extract(){
 if [ -f $1 ] ; then
     case $1 in
         *.tar.bz2)   tar xvjf $1   ; echo "tar xvjf $1"  ;;
         *.tar.gz)    tar xvzf $1   ; echo "tar xvzf $1"  ;;
         *.bz2)       bunzip2 $1    ; echo "bunzip2 $1"   ;;
         *.rar)       unrar x $1    ; echo "unrar x $1"   ;;
         *.gz)        gunzip $1     ; echo "gunzip $1"    ;;
         *.tar)       tar xvf $1    ; echo "tar xvf $1"   ;;
         *.tbz2)      tar xvjf $1   ; echo "tar xvjf $1"  ;;
         *.tgz)       tar xvzf $1   ; echo "tar xvzf $1"  ;;
         *.zip)       unzip $1      ; echo "unzip $1"     ;;
         *.Z)         uncompress $1 ; echo "unzip $1"     ;;
         *.7z)        7z x $1       ; echo "7z x $1"      ;;
         *)           echo "don't know how to extract '$1'..." ;;
     esac
 else
     echo "'$1' is not a valid file"
 fi
}

# A function to initialize an analysis directory
function setupanalysis(){
	mkdir -p input/{resources,raw,processed} results src && touch .gitignore
	printf "*.bam\n*.bai\n*.fastq.gz\n*.fq.gz\n*.bw\n" > .gitignore
}
