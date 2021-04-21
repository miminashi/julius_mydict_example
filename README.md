#  juliusの辞書をつくってみるサンプル

動作環境: macOS

## juliusのインストール

```sh
brew install julius
```

## juliusの実行

### あいさつサンプル

- 「おはよう」「おはようございます」「こんにちは」「こんばんは」

```sh
./run_julius.sh ./examples/hello
```

### 右左数え上げサンプル

- 「みぎにいっこ」「ひだりにごこ」「みぎにろっこ」など
- 「きゅうこ」と「じゅっこ」を追加しようよするとうまくいかない

```sh
./run_julius.sh ./examples/count
```

## 自前の辞書のつくりかた

```sh
cp -r ./examples/hello ./mydict
vim ./mydict/dict.symbols
vim ./mydict/dict.grammar
./run_julius.sh ./mydict
```

## 参考

- https://kocoffy.com/iot/post-519/
