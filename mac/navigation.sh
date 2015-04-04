##################################
# General bash profile utilities #
##################################

# Use as command prompt the time and current directory
PS1="[\t] \W $ "
PS2="[\t] \W > "

# Set default blocksize for ls, df, du
export BLOCKSIZE=1k

# cp asks for before overwrite (i) and verbose (v)
alias cp='cp -iv'

# mv asks for before overwrite (i) and verbose (v)
alias mv='mv -iv'

# mkdir creates intermediate directories (p) and verbose (v)
alias mkdir='mkdir -pv'

# ls:
#   - lists all entries except '.' and '..' (A),
#   - with color (G),
#   - with sizes (l) and size units (h),
#   - with trailing slahes for directories (p)
#   - with symbols to display entry type (F)
alias ll='ls -FGlAhp'

# make easy go back
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

# moves to home
alias ~='cd ~'
# Since the above is a key not easy to find in some mac keyboards:
alias home='cd ${HOME}'

# Moves to folder and lists contents
cdls() { builtin cd "$@"; ll; }

#Makes new Dir and jumps inside
mcd () { mkdir -p "$1" && cd "$1"; }

# Count of non-hidden files in current dir
alias numFiles='echo $(ls -1 | wc -l)'

# less full screen (c), exit if file fits in screen (F), with ANSI raw (R), wrap lines (s)
alias less='less -FSRXc'                    # Preferred 'less' implementation

# Use your favorite editor
alias edit='subl'
export EDITOR=$(which subl)

# Opens current directory with MacOSX Finder
alias f='open -a Finder ./'

# Swaps two files names
function swap() {
    local TMPFILE=tmp.$$
    mv "{${1}}" ${TMPFILE}
    mv "${2}" "${1}"
    mv ${TMPFILE} "${2}"
}

# Compression utilities

# Lists contents of a tar file
alias tarls='tar -tf'

# Untars a tar file (like unzip)
alias untar='tar -xf'

# Zips a direcroy
zipf () { zip -r "${1}".zip "${1}" ; }

# Takes the first argument and tries to extract if by its extension
extract () {
    if [ -f ${1} ] ; then
      case ${1} in
        *.tar.bz2)   tar xjf ${1}     ;;
        *.tar.gz)    tar xzf ${1}     ;;
        *.bz2)       bunzip2 ${1}     ;;
        *.rar)       unrar e ${1}     ;;
        *.gz)        gunzip ${1}      ;;
        *.tar)       tar xf ${1}      ;;
        *.tbz2)      tar xjf ${1}     ;;
        *.tgz)       tar xzf ${1}     ;;
        *.zip)       unzip ${1}       ;;
        *.Z)         uncompress ${1}  ;;
        *.7z)        7z x ${1}        ;;
        *)     echo "'${1}' cannot be extracted via extract()" ;;
         esac
     else
         echo "'${1}' is not a valid file"
     fi
}

# Pretty prints some common data file formats
pretty () {
    if [ -f ${1} ] ; then
      case ${1} in
        *.json)   python -m json.tool < ${1} ;;
        *.xml)    tidy -xml -i -q < ${1}     ;;
        *.html)   tidy -html -i -q < ${1}    ;;
        *.csv)    column -s , -t < ${1}      ;;
        *.tsv)    column -s \t -t < ${1}      ;;
        *)     echo "'${1}' cannot be pretty printed via pretty()" ;;
         esac
     else
         echo "'${1}' is not a valid file"
     fi
}

# Prefer type over which, gives more human readable information
alias which='type --all'

# ttop:  Recommended 'top' invocation to minimize resources
alias ttop="top -R -F -s 10 -o rsize"
