#!/bin/sh

#
# 使い方
#   ./run_julius.sh ./path/to/dict
#

dict="${1}"

# モデル？が存在しなければダウンロードする
if ! [ -f jnas-tri-3k16-gid.binhmm ]; then
  curl -L https://github.com/julius-speech/dictation-kit/raw/master/model/phone_m/jnas-tri-3k16-gid.binhmm > jnas-tri-3k16-gid.binhmm
fi

# 辞書のクリーンアップ
rm "${1}"/dict.dfa.forward
rm "${1}"/dict.dict
rm "${1}"/dict.voca
rm "${1}"/dict.term
rm "${1}"/dict.dfa

# 辞書のビルド
./mkdict.sh "${dict}"

# juliusの実行
julius -h ./jnas-tri-3k16-gid.binhmm -nostrip -gram "${dict}"/dict -input mic
