#!/usr/bin/env bash
# for some eix aliases like:
# alias packages='/etc/portage/scripts/eix.sh'

usage() { echo "Usage: $0 [-p] [-c]" 1>&2; exit 1; }

while getopts "pc" opt; do
  case ${opt} in
    p ) # process option p
      p=${OPTARG}
      eix -u --only-names
      ;;
    c ) # process option c
      c=${OPTARG}
      eix -u --only-names | wc -l
      ;;
    * )
      usage
      ;;
  esac
done
