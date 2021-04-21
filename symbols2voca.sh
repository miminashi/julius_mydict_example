#!/bin/sh

grep -v '^#' |
while read -r l; do
  symbol="$(echo "${l}" | cut -d ' ' -f 1)"
  phone="$(echo "${l}" | cut -d ' ' -f 2- | awk '{print $1, $1}' | yomi2voca.pl)"
  printf '%% %s\n%s\n' "${symbol}" "${phone}"
done

cat <<'EOF'
% NS_B
[s]   silB
% NS_E
[/s]  silE
EOF
