# set bind on up and down arrows: history search in append mode
# append mode: completes already entered input string with matching command from history
# istead of just giving back the most recent command
# see reference: https://www.gnu.org/software/bash/manual/html_node/Commands-For-History.html
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
