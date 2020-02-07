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
	mkdir -p data/{external,raw,processed} results src && touch .gitignore README.md
	printf "*.bam\n*.bai\n*.fastq.gz\n*.fq.gz\n*.bw\n*.gtf\n" > .gitignore
}

# A function to safely remove a mounted hard disk from the terminal
function safelyremove(){
	{
		udisksctl unmount -b $1
		udisksctl power-off -b $1
	}||{
		fuser -m $1
	}
}

# A function to read man pages in a better way
function manpdf(){
	man -Tpdf $1|zathura -
}

# Convert man pages to coloured ones by default
function man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# Get the rupee symbol in clipboard
# Needs xclip
function rupee(){
	echo '₹'|xclip -selection clipboard
}

# Try to have a zpreview
function zpreview(){
	zcat $1|head -n 100
}

function define(){ 
    curl -s https://www.vocabulary.com/dictionary/$1|grep 'og:description'|sed 's/[0-9][0-9][0-9]//g'|parallel --rpl "{def} s/.*content=\"(.*)\".*/\1/" "echo {def}"|sed -e 's/\&\#\;//g';
}