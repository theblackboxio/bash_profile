######################
# Git bash utilities #
######################

# Note that these commands does not operate on a single local git repo

# List git repos under folder
gitls () {
    if [ -z "${1}" ]
    then
        find . -name ".git"
    else
        find ${1} -name ".git"
    fi
}
