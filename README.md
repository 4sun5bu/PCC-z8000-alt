# Z8000-PCC-alt

## プロジェクト
PCC-Z8000-altは、tpaxia氏のPCC-Z8000からのフォークです。UNIX V7時代に開発されたPortable C Compilerを採用した、ZILOG Z8002のクロス開発環境の構築を目的としています。

## フォーク元からの変更点
- コマンド名を変更しています。cz8, az8, lz8,ccz8 を c8k, as8k, ld8k, cc8k に変更しました。
- プリプロセッサーをUNIX V7から移植しました。
- C言語の関数内で使うFPと退避レジスターを変更しました。
- アセンブラーがサポートしていなかった、BIT, SET, RES, LDM命令のアドレッシングモードを追加しました。
- リンカーがI/D分離のコードを出力できるよう変更しました。
## ビルド
GCC-13.3.0でビルドできることを確認しています。1970-80年代の古いスタイルのC言語で書かれたコードをベースにしているため、GCCのバージョンが異なるとエラーが出るかもしれません。
```bash
cd yacc && make
sudo cp yaccV7 /usr/local/bin
cd ../cpp && make
sudo cp cppV7 /usr/local/bin
cd ../z8000 && make
sudo cp as8k/as8k /usr/local/bin
sudo cp c8k/c8k /usr/local/bin
sudo cp ld8k /usr/local/bin
sudo cp cc8k /usr/local/bin
```

