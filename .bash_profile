# key test
# alias definitions
alias ll='ls -l'
alias la='ls -latr'
alias br='git branch'
alias gs='git status'
alias p='pwd'
alias home='cd ~'
alias h='history'
alias rr='REACT_APP_ENV=dev yarn start'

# Go up XX directories. Ex> up 3
up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

# Git functions
function gb()
{
  echo '-------- Creating branch' ${1}
  git checkout -b $1
}

function co()
{
  echo '-------- Checkout out branch' ${1}
  git checkout $1
}
