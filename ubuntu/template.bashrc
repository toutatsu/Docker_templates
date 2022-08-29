# 確認
echo execute bashrc

# function color {
#     return "color"
#     #return '\033[0;31m]'
# }
# # local RED='\033[0;31m'

# export PS1="${RED}\s $ "

# echo color

export PS1="\[\[\e[0;35m\]\s \[\e[0;32m\]\u\[\e[m\]@\[\e[0;36m\]\H\[\e[m\]:\[\e[0;33m\]\w\[\e[m\] [ \D{%Y/%m/%d} \t ]\] command:\# \! UID:$\n$"